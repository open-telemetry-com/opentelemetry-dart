// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

@TestOn('vm')
import 'dart:async';

import 'package:opentelemetry_api/opentelemetry_api.dart' as api;
import 'package:opentelemetry_sdk/opentelemetry_sdk.dart' as sdk;
import 'package:opentelemetry_sdk/src/sdk/trace/span.dart';
import 'package:opentelemetry_sdk/src/sdk/trace/tracer.dart';
import 'package:test/test.dart';

void main() {
  test('trace synchronous execution', () {
    final tracer = Tracer([], sdk.Resource([]), sdk.AlwaysOnSampler(), sdk.DateTimeTimeProvider(), sdk.IdGenerator(),
        sdk.InstrumentationLibrary('name', 'version'));
    api.Span? span;

    sdk.traceSync('syncTrace', () {
      span = api.Context.current.span;
    }, tracer: tracer);

    expect(span?.endTime, lessThan(DateTime.now().microsecondsSinceEpoch * sdk.TimeProvider.nanosecondsPerMicrosecond));
  });

  test('trace synchronous looped execution timing', () {
    final tracer = Tracer([], sdk.Resource([]), sdk.AlwaysOnSampler(), sdk.DateTimeTimeProvider(), sdk.IdGenerator(),
        sdk.InstrumentationLibrary('name', 'version'));
    final spans = <api.Span>[];

    for (var i = 0; i < 5; i++) {
      sdk.traceSync('syncTrace', () {
        expect(api.Context.current.span, isNotNull);
        spans.add(api.Context.current.span!);
      }, tracer: tracer);
    }

    for (var i = 1; i < spans.length; i++) {
      expect(spans[i].startTime, greaterThan(spans[i - 1].startTime));
      expect(spans[i - 1].endTime, isNotNull);
      expect(spans[i].endTime, greaterThan(spans[i - 1].endTime!));
    }
  });

  test('trace synchronous execution with error', () {
    final tracer = Tracer([], sdk.Resource([]), sdk.AlwaysOnSampler(), sdk.DateTimeTimeProvider(), sdk.IdGenerator(),
        sdk.InstrumentationLibrary('name', 'version'));
    api.Span? span;

    expect(
        () => sdk.traceSync('syncTrace', () {
              span = api.Context.current.span;
              throw Exception('Oh noes!');
            }, tracer: tracer),
        throwsException);
    expect(span, isNotNull);
    expect(span!.endTime, isNotNull);
    expect(span!.status.code, equals(api.StatusCode.error));
    expect(span!.status.description, equals('Exception: Oh noes!'));
    expect((span! as sdk.Span).attributes.get(api.SemanticAttributes.exceptionType), equals('_Exception'));
    expect((span! as sdk.Span).attributes.get(api.SemanticAttributes.exceptionMessage), equals('Exception: Oh noes!'));
  });

  test('trace asynchronous execution', () async {
    final tracer = Tracer([], sdk.Resource([]), sdk.AlwaysOnSampler(), sdk.DateTimeTimeProvider(), sdk.IdGenerator(),
        sdk.InstrumentationLibrary('name', 'version'));
    Span? span;

    await sdk.trace('asyncTrace', () async {
      span = api.Context.current.span as sdk.Span;
    }, tracer: tracer);

    expect(span, isNotNull);
    expect(span!.endTime, lessThan(DateTime.now().microsecondsSinceEpoch * sdk.TimeProvider.nanosecondsPerMicrosecond));
  });

  test('trace asynchronous looped execution timing', () async {
    final tracer = Tracer([], sdk.Resource([]), sdk.AlwaysOnSampler(), sdk.DateTimeTimeProvider(), sdk.IdGenerator(),
        sdk.InstrumentationLibrary('name', 'version'));
    final spans = <Span>[];

    for (var i = 0; i < 5; i++) {
      await sdk.trace('asyncTrace', () async {
        spans.add(api.Context.current.span as Span);
      }, tracer: tracer);
    }

    for (var i = 1; i < spans.length; i++) {
      expect(spans[i].startTime, greaterThan(spans[i - 1].startTime));
      expect(spans[i - 1].endTime, isNotNull);
      expect(spans[i].endTime, greaterThan(spans[i - 1].endTime!));
    }
  });

  test('trace asynchronous execution with thrown error', () async {
    final tracer = Tracer([], sdk.Resource([]), sdk.AlwaysOnSampler(), sdk.DateTimeTimeProvider(), sdk.IdGenerator(),
        sdk.InstrumentationLibrary('name', 'version'));
    Span? span;

    try {
      await sdk.trace('asyncTrace', () async {
        span = api.Context.current.span as Span;
        throw Exception('Oh noes!');
      }, tracer: tracer);
    } catch (e) {
      expect(e.toString(), equals('Exception: Oh noes!'));
    }
    expect(span, isNotNull);
    expect(span!.endTime, isNotNull);
    expect(span!.status.code, equals(api.StatusCode.error));
    expect(span!.status.description, equals('Exception: Oh noes!'));
    expect(span!.attributes.get(api.SemanticAttributes.exceptionType), equals('_Exception'));
    expect(span!.attributes.get(api.SemanticAttributes.exceptionMessage), equals('Exception: Oh noes!'));
  });

  test('trace asynchronous execution completes with error', () async {
    final tracer = Tracer([], sdk.Resource([]), sdk.AlwaysOnSampler(), sdk.DateTimeTimeProvider(), sdk.IdGenerator(),
        sdk.InstrumentationLibrary('name', 'version'));
    Span? span;

    try {
      await sdk.trace<dynamic>('asyncTrace', () async {
        span = api.Context.current.span as Span;
        return Future<dynamic>.error(Exception('Oh noes!'));
      }, tracer: tracer);
    } catch (e) {
      expect(e.toString(), equals('Exception: Oh noes!'));
    }

    expect(span, isNotNull);
    expect(span!.endTime, isNotNull);
    expect(span!.status.code, equals(api.StatusCode.error));
    expect(span!.status.description, equals('Exception: Oh noes!'));
    expect(span!.attributes.get(api.SemanticAttributes.exceptionType), equals('_Exception'));
    expect(span!.attributes.get(api.SemanticAttributes.exceptionMessage), equals('Exception: Oh noes!'));
  });
}
