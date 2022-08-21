// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

import 'package:fixnum/fixnum.dart';
import 'package:http/http.dart' as http;

import 'package:opentelemetry_api/opentelemetry_api.dart' as api;
import 'package:opentelemetry_sdk/opentelemetry_sdk.dart' as sdk;
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

    final body = otlp.ExportTraceServiceRequest(resourceSpans: _spansToProtobuf(spans));

    client.post(uri, body: body.writeToBuffer(), headers: {'Content-Type': 'application/x-protobuf'});
  }

  /// Group and construct the protobuf equivalent of the given list of [api.Span]s.
  /// Spans are grouped by a trace provider's [sdk.Resource] and a tracer's
  /// [api.InstrumentationLibrary].
  Iterable<otlp.ResourceSpans> _spansToProtobuf(List<api.Span> spans) {
    // use a map of maps to group spans by resource and instrumentation library
    final rsm = <sdk.Resource, Map<api.InstrumentationLibrary, List<otlp.Span>>>{};
    for (final span in spans) {
      final il = rsm[(span as sdk.Span).resource] ?? <api.InstrumentationLibrary, List<otlp.Span>>{};
      il[span.instrumentationLibrary] = il[span.instrumentationLibrary] ?? <otlp.Span>[]
        ..add(_spanToProtobuf(span));
      rsm[span.resource] = il;
    }

    final rss = <otlp.ResourceSpans>[];
    for (final il in rsm.entries) {
      // for each distinct resource, construct the protobuf equivalent
      final attrs = <otlp.KeyValue>[];
      for (final attr in il.key.attributes.keys) {
        attrs.add(otlp.KeyValue(key: attr, value: _attributeValueToProtobuf(il.key.attributes.get(attr))));
      }
      final rs = otlp.ResourceSpans(resource: otlp.Resource(attributes: attrs), scopeSpans: []);
      // for each distinct instrumentation library, construct the protobuf equivalent
      for (final ils in il.value.entries) {
        rs.scopeSpans.add(otlp.ScopeSpans(
            spans: ils.value, scope: otlp.InstrumentationScope(name: ils.key.name, version: ils.key.version)));
      }
      rss.add(rs);
    }
    return rss;
  }

  Iterable<otlp.Span_Link> _spanLinksToProtobuf(List<api.SpanLink> links) {
    final pbLinks = <otlp.Span_Link>[];
    for (final link in links) {
      final attrs = <otlp.KeyValue>[];
      for (final attr in link.attributes) {
        attrs.add(otlp.KeyValue(key: attr.key, value: _attributeValueToProtobuf(attr.value)));
      }
      pbLinks.add(otlp.Span_Link(
          traceId: link.context.traceId.get(),
          spanId: link.context.spanId.get(),
          traceState: link.context.traceState.toString(),
          attributes: attrs));
    }
    return pbLinks;
  }

  otlp.Span _spanToProtobuf(sdk.Span span) {
    otlp.Status_StatusCode statusCode;
    switch (span.status.code) {
      case api.StatusCode.unset:
        statusCode = otlp.Status_StatusCode.STATUS_CODE_UNSET;
        break;
      case api.StatusCode.error:
        statusCode = otlp.Status_StatusCode.STATUS_CODE_ERROR;
        break;
      case api.StatusCode.ok:
        statusCode = otlp.Status_StatusCode.STATUS_CODE_OK;
        break;
    }

    otlp.Span_SpanKind spanKind;
    switch (span.kind) {
      case api.SpanKind.client:
        spanKind = otlp.Span_SpanKind.SPAN_KIND_CLIENT;
        break;
      case api.SpanKind.consumer:
        spanKind = otlp.Span_SpanKind.SPAN_KIND_CONSUMER;
        break;
      case api.SpanKind.internal:
        spanKind = otlp.Span_SpanKind.SPAN_KIND_INTERNAL;
        break;
      case api.SpanKind.producer:
        spanKind = otlp.Span_SpanKind.SPAN_KIND_PRODUCER;
        break;
      case api.SpanKind.server:
        spanKind = otlp.Span_SpanKind.SPAN_KIND_SERVER;
        break;
      default:
        spanKind = otlp.Span_SpanKind.SPAN_KIND_UNSPECIFIED;
    }

    return otlp.Span(
      traceId: span.spanContext.traceId.get(),
      spanId: span.spanContext.spanId.get(),
      parentSpanId: span.parentSpanId.get(),
      name: span.name,
      startTimeUnixNano: span.startTime,
      endTimeUnixNano: span.endTime,
      attributes: span.attributes.keys
          .map((key) => otlp.KeyValue(key: key, value: _attributeValueToProtobuf(span.attributes.get(key)))),
      status: otlp.Status(code: statusCode, message: span.status.description),
      kind: spanKind,
      links: _spanLinksToProtobuf(span.links),
    );
  }

  otlp.AnyValue _attributeValueToProtobuf(Object? value) {
    if (value is String) {
      return otlp.AnyValue(stringValue: value);
    }
    if (value is bool) {
      return otlp.AnyValue(boolValue: value);
    }
    if (value is double) {
      return otlp.AnyValue(doubleValue: value);
    }
    if (value is Int64) {
      return otlp.AnyValue(intValue: value);
    }
    if (value is List) {
      if (value.isNotEmpty) {
        final list = value as List<Object>;
        final values = <otlp.AnyValue>[];
        for (final Object listElement in list) {
          values.add(_attributeValueToProtobuf(listElement));
        }
        return otlp.AnyValue(arrayValue: otlp.ArrayValue(values: values));
      }
    }
    return otlp.AnyValue();
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
