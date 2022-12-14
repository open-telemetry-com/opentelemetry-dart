///
//  Generated code. Do not modify.
//  source: opentelemetry/proto/collector/metrics/v1/metrics_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import '../../../metrics/v1/metrics.pbjson.dart' as $0;
import '../../../resource/v1/resource.pbjson.dart' as $1;
import '../../../common/v1/common.pbjson.dart' as $2;

@$core.Deprecated('Use exportMetricsServiceRequestDescriptor instead')
const ExportMetricsServiceRequest$json = const {
  '1': 'ExportMetricsServiceRequest',
  '2': const [
    const {'1': 'resource_metrics', '3': 1, '4': 3, '5': 11, '6': '.opentelemetry.proto.metrics.v1.ResourceMetrics', '10': 'resourceMetrics'},
  ],
};

/// Descriptor for `ExportMetricsServiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exportMetricsServiceRequestDescriptor = $convert.base64Decode('ChtFeHBvcnRNZXRyaWNzU2VydmljZVJlcXVlc3QSWgoQcmVzb3VyY2VfbWV0cmljcxgBIAMoCzIvLm9wZW50ZWxlbWV0cnkucHJvdG8ubWV0cmljcy52MS5SZXNvdXJjZU1ldHJpY3NSD3Jlc291cmNlTWV0cmljcw==');
@$core.Deprecated('Use exportMetricsServiceResponseDescriptor instead')
const ExportMetricsServiceResponse$json = const {
  '1': 'ExportMetricsServiceResponse',
  '2': const [
    const {'1': 'partial_success', '3': 1, '4': 1, '5': 11, '6': '.opentelemetry.proto.collector.metrics.v1.ExportMetricsPartialSuccess', '10': 'partialSuccess'},
  ],
};

/// Descriptor for `ExportMetricsServiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exportMetricsServiceResponseDescriptor = $convert.base64Decode('ChxFeHBvcnRNZXRyaWNzU2VydmljZVJlc3BvbnNlEm4KD3BhcnRpYWxfc3VjY2VzcxgBIAEoCzJFLm9wZW50ZWxlbWV0cnkucHJvdG8uY29sbGVjdG9yLm1ldHJpY3MudjEuRXhwb3J0TWV0cmljc1BhcnRpYWxTdWNjZXNzUg5wYXJ0aWFsU3VjY2Vzcw==');
@$core.Deprecated('Use exportMetricsPartialSuccessDescriptor instead')
const ExportMetricsPartialSuccess$json = const {
  '1': 'ExportMetricsPartialSuccess',
  '2': const [
    const {'1': 'rejected_data_points', '3': 1, '4': 1, '5': 3, '10': 'rejectedDataPoints'},
    const {'1': 'error_message', '3': 2, '4': 1, '5': 9, '10': 'errorMessage'},
  ],
};

/// Descriptor for `ExportMetricsPartialSuccess`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exportMetricsPartialSuccessDescriptor = $convert.base64Decode('ChtFeHBvcnRNZXRyaWNzUGFydGlhbFN1Y2Nlc3MSMAoUcmVqZWN0ZWRfZGF0YV9wb2ludHMYASABKANSEnJlamVjdGVkRGF0YVBvaW50cxIjCg1lcnJvcl9tZXNzYWdlGAIgASgJUgxlcnJvck1lc3NhZ2U=');
const $core.Map<$core.String, $core.dynamic> MetricsServiceBase$json = const {
  '1': 'MetricsService',
  '2': const [
    const {'1': 'Export', '2': '.opentelemetry.proto.collector.metrics.v1.ExportMetricsServiceRequest', '3': '.opentelemetry.proto.collector.metrics.v1.ExportMetricsServiceResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use metricsServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> MetricsServiceBase$messageJson = const {
  '.opentelemetry.proto.collector.metrics.v1.ExportMetricsServiceRequest': ExportMetricsServiceRequest$json,
  '.opentelemetry.proto.metrics.v1.ResourceMetrics': $0.ResourceMetrics$json,
  '.opentelemetry.proto.resource.v1.Resource': $1.Resource$json,
  '.opentelemetry.proto.common.v1.KeyValue': $2.KeyValue$json,
  '.opentelemetry.proto.common.v1.AnyValue': $2.AnyValue$json,
  '.opentelemetry.proto.common.v1.ArrayValue': $2.ArrayValue$json,
  '.opentelemetry.proto.common.v1.KeyValueList': $2.KeyValueList$json,
  '.opentelemetry.proto.metrics.v1.ScopeMetrics': $0.ScopeMetrics$json,
  '.opentelemetry.proto.common.v1.InstrumentationScope': $2.InstrumentationScope$json,
  '.opentelemetry.proto.metrics.v1.Metric': $0.Metric$json,
  '.opentelemetry.proto.metrics.v1.Gauge': $0.Gauge$json,
  '.opentelemetry.proto.metrics.v1.NumberDataPoint': $0.NumberDataPoint$json,
  '.opentelemetry.proto.metrics.v1.Exemplar': $0.Exemplar$json,
  '.opentelemetry.proto.metrics.v1.Sum': $0.Sum$json,
  '.opentelemetry.proto.metrics.v1.Histogram': $0.Histogram$json,
  '.opentelemetry.proto.metrics.v1.HistogramDataPoint': $0.HistogramDataPoint$json,
  '.opentelemetry.proto.metrics.v1.ExponentialHistogram': $0.ExponentialHistogram$json,
  '.opentelemetry.proto.metrics.v1.ExponentialHistogramDataPoint': $0.ExponentialHistogramDataPoint$json,
  '.opentelemetry.proto.metrics.v1.ExponentialHistogramDataPoint.Buckets': $0.ExponentialHistogramDataPoint_Buckets$json,
  '.opentelemetry.proto.metrics.v1.Summary': $0.Summary$json,
  '.opentelemetry.proto.metrics.v1.SummaryDataPoint': $0.SummaryDataPoint$json,
  '.opentelemetry.proto.metrics.v1.SummaryDataPoint.ValueAtQuantile': $0.SummaryDataPoint_ValueAtQuantile$json,
  '.opentelemetry.proto.collector.metrics.v1.ExportMetricsServiceResponse': ExportMetricsServiceResponse$json,
  '.opentelemetry.proto.collector.metrics.v1.ExportMetricsPartialSuccess': ExportMetricsPartialSuccess$json,
};

/// Descriptor for `MetricsService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List metricsServiceDescriptor = $convert.base64Decode('Cg5NZXRyaWNzU2VydmljZRKZAQoGRXhwb3J0EkUub3BlbnRlbGVtZXRyeS5wcm90by5jb2xsZWN0b3IubWV0cmljcy52MS5FeHBvcnRNZXRyaWNzU2VydmljZVJlcXVlc3QaRi5vcGVudGVsZW1ldHJ5LnByb3RvLmNvbGxlY3Rvci5tZXRyaWNzLnYxLkV4cG9ydE1ldHJpY3NTZXJ2aWNlUmVzcG9uc2UiAA==');
