// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

import 'package:http/http.dart' as http;

import 'package:opentelemetry_api/opentelemetry_api.dart' as api;
import 'package:opentelemetry_otlp/opentelemetry_otlp.dart' as otlp;

class CollectorExporter implements api.SpanExporter {
  Uri uri;
  http.Client client;
  var _isShutdown = false;

  CollectorExporter(this.uri, {http.Client? httpClient}) : client = httpClient ?? http.Client();

  @override
  void export(List<api.Span> spans) {
    if (_isShutdown) {
      return;
    }

    if (spans.isEmpty) {
      return;
    }

    final body = otlp.ExportTraceServiceRequest(resourceSpans: otlp.spansToProtobuf(spans));

    client.post(uri, body: body.writeToBuffer(), headers: {'Content-Type': 'application/x-protobuf'});
  }

  @override
  void forceFlush() {
    return;
  }

  @override
  void shutdown() {
    _isShutdown = true;
    client.close();
  }
}
