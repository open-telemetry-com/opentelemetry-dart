// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

import 'package:fixnum/fixnum.dart';

import 'package:opentelemetry_api/opentelemetry_api.dart';

enum SpanKind {
  /// Server-side handling of a synchronous RPC or other remote request.
  server,

  /// A request to a remote service.
  client,

  /// An initiator of an asynchronous request.
  producer,

  /// A handler of an asynchronous producer request.
  consumer,

  /// An internal operation within an application, as opposed to an operation with remote parents or children.
  internal
}

/// A representation of a single operation within a trace.
///
/// Examples of a span might include remote procedure calls or in-process
/// function calls to sub-components. A trace has a single, top-level "root"
/// span that in turn may haze zero or more child Spans, which in turn may have
/// children.
abstract class Span {
  /// The context associated with this span.
  ///
  /// This context is an immutable, serializable identifier for this span that
  /// can be used to create new child spans and remains usable even after this
  /// span ends.
  SpanContext get spanContext;

  /// Get the time when the span was started.
  Int64 get startTime;

  /// Get the time when the span was closed, or null if still open.
  Int64? get endTime; // TODO: make non nullable and treat 0 or -1 as not present???

  /// The parent span id.
  SpanId get parentSpanId;

  /// The name of the span.
  String get name;
  set name(String name);

  /// Whether this Span is recording information like events with the
  /// addEvent operation, status with setStatus, etc.
  bool get isRecording;

  /// The kind of the span.
  SpanKind get kind;

  /// Sets the status to the [Span].
  ///
  /// If used, this will override the default [Span] status. Default status code
  /// is [StatusCode.unset].
  ///
  /// Only the value of the last call will be recorded, and implementations are
  /// free to ignore previous calls.
  void setStatus(StatusCode status, {String? description});

  /// Retrieve the status of the [Span].
  SpanStatus get status;

  /// set single attribute
  void setAttribute(Attribute attribute);

  /// set multiple attributes
  void setAttributes(List<Attribute> attributes);

  /// Retrieve the attributes
  Attributes get attributes;

  /// Retrieve the instrumentation library on this span.
  InstrumentationLibrary get instrumentationLibrary;

  /// Record metadata about an event occurring during this span.
  void addEvent(String name, Int64 timestamp, {List<Attribute> attributes});

  /// Marks the end of this span's execution.
  void end();

  /// Record metadata about an exception occurring during this span.
  void recordException(dynamic exception, {StackTrace? stackTrace});

  /// Retrieve the resource
  Resource get resource;

  /// Retrieve the links
  List<SpanLink> get links;
}
