// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

import 'package:fixnum/fixnum.dart';

import 'package:opentelemetry_api/opentelemetry_api.dart' as api;

/// A [api.Tracer] class which yields [api.NonRecordingSpan]s and no-ops for most
/// operations.
class NoopTracer implements api.Tracer {
  @override
  api.Span startSpan(
    String name, {
    api.Context? context,
    api.SpanKind kind = api.SpanKind.internal,
    List<api.Attribute>? attributes,
    List<api.SpanLink>? links,
    Int64? startTime,
  }) {
    var parentContext = context?.spanContext;
    if (parentContext != null && !parentContext.isValid) {
      parentContext = null;
    }

    return api.NonRecordingSpan(parentContext);
  }
}
