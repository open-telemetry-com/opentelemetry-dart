// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

@TestOn('vm')
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:opentelemetry_api/opentelemetry_api.dart' as api;
import 'package:opentelemetry_otlp_http/opentelemetry_otlp_http.dart';
import 'package:opentelemetry_sdk/opentelemetry_sdk.dart' as sdk;
import 'package:opentelemetry_otlp/opentelemetry_otlp.dart' as otlp;
import 'package:test/test.dart';

import 'collector_exporter_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late final MockClient mockClient;
  final uri = Uri.parse('https://h.wdesk.org/s/opentelemetry-collector/v1/traces');

  setUpAll(() {
    mockClient = MockClient();
    when(mockClient.post(any, body: anyNamed('body'), headers: anyNamed('headers')))
        .thenAnswer((_) async => http.Response.bytes(otlp.ExportTraceServiceResponse().writeToBuffer(), 200));
  });

  setUp(() {});

  tearDown(() {
    reset(mockClient);
  });

  test('sends spans', () {
    final resource = sdk.Resource([api.Attribute.fromString('service.name', 'bar')]);
    final instrumentationLibrary = sdk.InstrumentationLibrary('library_name', 'library_version');
    final limits = sdk.SpanLimits(maxNumAttributeLength: 5);
    final span1 = sdk.Span(
        'foo',
        sdk.SpanContext(api.TraceId([1, 2, 3]), api.SpanId([7, 8, 9]), api.TraceFlags.none, sdk.TraceState.empty()),
        api.SpanId([4, 5, 6]),
        [],
        sdk.DateTimeTimeProvider(),
        resource,
        instrumentationLibrary,
        attributes: [api.Attribute.fromString('foo', 'bar')],
        kind: api.SpanKind.client)
      ..end();
    final span2 = sdk.Span(
        'baz',
        sdk.SpanContext(api.TraceId([1, 2, 3]), api.SpanId([10, 11, 12]), api.TraceFlags.none, sdk.TraceState.empty()),
        api.SpanId([4, 5, 6]),
        [],
        sdk.DateTimeTimeProvider(),
        resource,
        instrumentationLibrary,
        limits: limits,
        attributes: [api.Attribute.fromBoolean('bool', true)],
        kind: api.SpanKind.internal,
        links: [
          api.SpanLink(span1.spanContext, attributes: [
            api.Attribute.fromString('longKey', 'I am very long with maxNumAttributeLength: 5 limitation!')
          ])
        ])
      ..end();

    CollectorExporter(uri, httpClient: mockClient).export([span1, span2]);

    final expectedBody = otlp.ExportTraceServiceRequest(resourceSpans: [
      otlp.ResourceSpans(
          resource:
              otlp.Resource(attributes: [otlp.KeyValue(key: 'service.name', value: otlp.AnyValue(stringValue: 'bar'))]),
          scopeSpans: [
            otlp.ScopeSpans(spans: [
              otlp.Span(
                  traceId: [1, 2, 3],
                  spanId: [7, 8, 9],
                  parentSpanId: [4, 5, 6],
                  name: 'foo',
                  startTimeUnixNano: span1.startTime,
                  endTimeUnixNano: span1.endTime,
                  attributes: [otlp.KeyValue(key: 'foo', value: otlp.AnyValue(stringValue: 'bar'))],
                  status: otlp.Status(code: otlp.Status_StatusCode.STATUS_CODE_UNSET, message: null),
                  kind: otlp.Span_SpanKind.SPAN_KIND_CLIENT),
              otlp.Span(
                  traceId: [1, 2, 3],
                  spanId: [10, 11, 12],
                  parentSpanId: [4, 5, 6],
                  name: 'baz',
                  startTimeUnixNano: span2.startTime,
                  endTimeUnixNano: span2.endTime,
                  attributes: [otlp.KeyValue(key: 'bool', value: otlp.AnyValue(boolValue: true))],
                  status: otlp.Status(code: otlp.Status_StatusCode.STATUS_CODE_UNSET, message: null),
                  kind: otlp.Span_SpanKind.SPAN_KIND_INTERNAL,
                  links: [
                    otlp.Span_Link(
                        traceId: [1, 2, 3],
                        spanId: [7, 8, 9],
                        traceState: '',
                        attributes: [otlp.KeyValue(key: 'longKey', value: otlp.AnyValue(stringValue: 'I am '))])
                  ])
            ], scope: otlp.InstrumentationScope(name: 'library_name', version: 'library_version'))
          ])
    ]);

    expect(mockClient, isNotNull);
    verify(mockClient
        .post(uri, body: expectedBody.writeToBuffer(), headers: {'Content-Type': 'application/x-protobuf'})).called(1);
  });

  test('does not send spans when shutdown', () {
    final span = sdk.Span(
        'foo',
        sdk.SpanContext(api.TraceId([1, 2, 3]), api.SpanId([7, 8, 9]), api.TraceFlags.none, sdk.TraceState.empty()),
        api.SpanId([4, 5, 6]),
        [],
        sdk.DateTimeTimeProvider(),
        sdk.Resource([]),
        sdk.InstrumentationLibrary('library_name', 'library_version'))
      ..end();

    CollectorExporter(uri, httpClient: mockClient)
      ..shutdown()
      ..export([span]);

    expect(mockClient, isNotNull);
    verify(mockClient.close()).called(1);
    verifyNever(mockClient.post(uri, body: anything, headers: {'Content-Type': 'application/x-protobuf'}));
  });
}
