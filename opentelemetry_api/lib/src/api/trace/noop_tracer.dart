// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

import 'package:fixnum/fixnum.dart';

import 'package:opentelemetry_api/opentelemetry_api.dart';

/// A [Tracer] class which yields [NonRecordingSpan]s and no-ops for most
/// operations.
class NoopTracer implements Tracer {
  @override
  Span startSpan(
    String name, {
    Context? context,
    SpanKind kind = SpanKind.internal,
    List<Attribute>? attributes,
    List<SpanLink>? links,
    Int64? startTime,
  }) {
    var parentContext = context?.spanContext;
    if (parentContext != null && !parentContext.isValid) {
      parentContext = null;
    }

    return NonRecordingSpan(parentContext);
  }
}
