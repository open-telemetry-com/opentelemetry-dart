// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

import 'package:fixnum/fixnum.dart';
import 'package:opentelemetry_api/opentelemetry_api.dart';

class ConsoleExporter implements SpanExporter {
  var _isShutdown = false;

  void _printSpans(List<Span> spans) {
    for (var i = 0; i < spans.length; i++) {
      final span = spans[i];
      Int64 duration = (span.endTime ?? Int64(DateTime.now().microsecondsSinceEpoch) * 1000) - span.startTime;
      // ignore: avoid_print
      print({
        'traceId': '${span.spanContext.traceId}',
        'parentId': '${span.parentSpanId}',
        'name': span.name,
        'id': '${span.spanContext.spanId}',
        'timestamp': span.startTime,
        'duration': duration,
        'flags': span.spanContext.traceFlags.toRadixString(16).padLeft(2, '0'),
        'state': '${span.spanContext.traceState}',
        'status': span.status.code,
      });
    }
  }

  @override
  void export(List<Span> spans) {
    if (_isShutdown) {
      return;
    }

    _printSpans(spans);
  }

  @override
  void forceFlush() {
    return;
  }

  @override
  void shutdown() {
    _isShutdown = true;
  }
}
