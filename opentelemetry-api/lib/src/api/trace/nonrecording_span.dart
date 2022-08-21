// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

import 'package:fixnum/fixnum.dart';

import 'package:opentelemetry_api/opentelemetry_api.dart' as api;

/// A class representing a [api.Span] which should not be sampled or recorded.
///
/// See https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/trace/api.md#wrapping-a-spancontext-in-a-span
/// for more information.
///
/// This class should not be exposed to consumers and is used internally to wrap
/// [api.SpanContext] being injected or extracted for external calls.
class NonRecordingSpan implements api.Span {
  final api.SpanStatus _status = api.SpanStatus()..code = api.StatusCode.ok;
  final api.SpanContext _spanContext;

  NonRecordingSpan(api.SpanContext? spanContext) : _spanContext = spanContext ?? _NonRecordingSpanContext.instance;

  @override
  void setAttribute(api.Attribute attribute) {}

  @override
  void setAttributes(List<api.Attribute> attributes) {}

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
  api.SpanId get parentSpanId => api.SpanId.invalid();

  @override
  void setStatus(api.StatusCode status, {String? description}) {}

  @override
  api.SpanContext get spanContext => _spanContext;

  @override
  Int64 get startTime => Int64.ZERO;

  @override
  api.SpanStatus get status => _status;

  @override
  api.InstrumentationLibrary get instrumentationLibrary => _NonRecordingInstrumentationLibrary.instance;

  @override
  void recordException(dynamic exception, {StackTrace? stackTrace}) {}

  @override
  void addEvent(String name, Int64 timestamp, {List<api.Attribute> attributes = const []}) {}

  @override
  api.SpanKind get kind => api.SpanKind.internal;
}

class _NonRecordingInstrumentationLibrary implements api.InstrumentationLibrary {
  static const instance = _NonRecordingInstrumentationLibrary();

  const _NonRecordingInstrumentationLibrary();

  @override
  String get name => 'NON_RECORDING';
  @override
  String get version => '0.0.0';
}

class _NonRecordingSpanContext implements api.SpanContext {
  static const instance = _NonRecordingSpanContext();

  const _NonRecordingSpanContext();

  @override
  bool get isRemote => false;

  @override
  bool get isValid => false;

  @override
  api.SpanId get spanId => api.SpanId.invalid();

  @override
  int get traceFlags => api.TraceFlags.none;

  @override
  api.TraceId get traceId => api.TraceId.invalid();

  @override
  api.TraceState get traceState => _NonRecordingTraceState.instance;
}

class _NonRecordingTraceState implements api.TraceState {
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
