// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

import 'package:fixnum/fixnum.dart';

import 'package:opentelemetry_api/opentelemetry_api.dart';

/// An interface for creating [Span]s and propagating context in-process.
///
/// Users may choose to use manual or automatic Context propagation. Because of
/// that, this class offers APIs to facilitate both usages.
abstract class Tracer {
  /// Starts a new [Span] without setting it as the current span in this
  /// tracer's context.
  Span startSpan(
    String name, {
    Context? context,
    SpanKind kind = SpanKind.internal,
    List<Attribute>? attributes,
    List<SpanLink>? links,
    Int64? startTime,
  });
}
