// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

import 'package:fixnum/fixnum.dart';

import 'package:opentelemetry_api/opentelemetry_api.dart';

/// A class representing a [Span] which should not be sampled or recorded.
///
/// See https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/trace/api.md#wrapping-a-spancontext-in-a-span
/// for more information.
///
/// This class should not be exposed to consumers and is used internally to wrap
/// [SpanContext] being injected or extracted for external calls.
class NonRecordingSpan implements Span {
  final SpanStatus _status = SpanStatus()..code = StatusCode.ok;
  final SpanContext _spanContext;

  NonRecordingSpan(SpanContext? spanContext) : _spanContext = spanContext ?? _NonRecordingSpanContext.instance;

  @override
  void setAttribute(Attribute attribute) {}

  @override
  void setAttributes(List<Attribute> attributes) {}

  @override
  void end() {}

  @override
  Int64? get endTime => null;

  @override
  String get name => 'NON_RECORDING';

  @override
  set name(String name) {}

  @override
  bool get isRecording => false;

  @override
  SpanId get parentSpanId => SpanId.invalid();

  @override
  void setStatus(StatusCode status, {String? description}) {}

  @override
  SpanContext get spanContext => _spanContext;

  @override
  Int64 get startTime => Int64.ZERO;

  @override
  SpanStatus get status => _status;

  @override
  InstrumentationLibrary get instrumentationLibrary => _NonRecordingInstrumentationLibrary.instance;

  @override
  void recordException(dynamic exception, {StackTrace? stackTrace}) {}

  @override
  void addEvent(String name, Int64 timestamp, {List<Attribute> attributes = const []}) {}

  @override
  SpanKind get kind => SpanKind.internal;

  static final _attributes = Attributes.empty();

  @override
  Attributes get attributes => _attributes;

  static final _resource = Resource([]);

  @override
  Resource get resource => _resource;

  @override
  List<SpanLink> get links => const [];
}

class _NonRecordingInstrumentationLibrary implements InstrumentationLibrary {
  static const instance = _NonRecordingInstrumentationLibrary();

  const _NonRecordingInstrumentationLibrary();

  @override
  String get name => 'NON_RECORDING';
  @override
  String get version => '0.0.0';
}

class _NonRecordingSpanContext implements SpanContext {
  static const instance = _NonRecordingSpanContext();

  const _NonRecordingSpanContext();

  @override
  bool get isRemote => false;

  @override
  bool get isValid => false;

  @override
  SpanId get spanId => SpanId.invalid();

  @override
  int get traceFlags => TraceFlags.none;

  @override
  TraceId get traceId => TraceId.invalid();

  @override
  TraceState get traceState => _NonRecordingTraceState.instance;
}

class _NonRecordingTraceState implements TraceState {
  static const instance = _NonRecordingTraceState();

  const _NonRecordingTraceState();

  @override
  String? get(String key) {
    return null;
  }

  @override
  bool get isEmpty => true;

  @override
  void put(String key, String value) {}

  @override
  void remove(String key) {}

  @override
  int get size => 0;
}
