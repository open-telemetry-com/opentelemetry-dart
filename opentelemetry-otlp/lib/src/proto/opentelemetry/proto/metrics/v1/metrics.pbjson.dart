///
//  Generated code. Do not modify.
//  source: opentelemetry/proto/metrics/v1/metrics.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use aggregationTemporalityDescriptor instead')
const AggregationTemporality$json = const {
  '1': 'AggregationTemporality',
  '2': const [
    const {'1': 'AGGREGATION_TEMPORALITY_UNSPECIFIED', '2': 0},
    const {'1': 'AGGREGATION_TEMPORALITY_DELTA', '2': 1},
    const {'1': 'AGGREGATION_TEMPORALITY_CUMULATIVE', '2': 2},
  ],
};

/// Descriptor for `AggregationTemporality`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List aggregationTemporalityDescriptor = $convert.base64Decode('ChZBZ2dyZWdhdGlvblRlbXBvcmFsaXR5EicKI0FHR1JFR0FUSU9OX1RFTVBPUkFMSVRZX1VOU1BFQ0lGSUVEEAASIQodQUdHUkVHQVRJT05fVEVNUE9SQUxJVFlfREVMVEEQARImCiJBR0dSRUdBVElPTl9URU1QT1JBTElUWV9DVU1VTEFUSVZFEAI=');
@$core.Deprecated('Use dataPointFlagsDescriptor instead')
const DataPointFlags$json = const {
  '1': 'DataPointFlags',
  '2': const [
    const {'1': 'FLAG_NONE', '2': 0},
    const {'1': 'FLAG_NO_RECORDED_VALUE', '2': 1},
  ],
};

/// Descriptor for `DataPointFlags`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List dataPointFlagsDescriptor = $convert.base64Decode('Cg5EYXRhUG9pbnRGbGFncxINCglGTEFHX05PTkUQABIaChZGTEFHX05PX1JFQ09SREVEX1ZBTFVFEAE=');
@$core.Deprecated('Use metricsDataDescriptor instead')
const MetricsData$json = const {
  '1': 'MetricsData',
  '2': const [
    const {'1': 'resource_metrics', '3': 1, '4': 3, '5': 11, '6': '.opentelemetry.proto.metrics.v1.ResourceMetrics', '10': 'resourceMetrics'},
  ],
};

/// Descriptor for `MetricsData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metricsDataDescriptor = $convert.base64Decode('CgtNZXRyaWNzRGF0YRJaChByZXNvdXJjZV9tZXRyaWNzGAEgAygLMi8ub3BlbnRlbGVtZXRyeS5wcm90by5tZXRyaWNzLnYxLlJlc291cmNlTWV0cmljc1IPcmVzb3VyY2VNZXRyaWNz');
@$core.Deprecated('Use resourceMetricsDescriptor instead')
const ResourceMetrics$json = const {
  '1': 'ResourceMetrics',
  '2': const [
    const {'1': 'resource', '3': 1, '4': 1, '5': 11, '6': '.opentelemetry.proto.resource.v1.Resource', '10': 'resource'},
    const {'1': 'scope_metrics', '3': 2, '4': 3, '5': 11, '6': '.opentelemetry.proto.metrics.v1.ScopeMetrics', '10': 'scopeMetrics'},
    const {'1': 'schema_url', '3': 3, '4': 1, '5': 9, '10': 'schemaUrl'},
  ],
  '9': const [
    const {'1': 1000, '2': 1001},
  ],
};

/// Descriptor for `ResourceMetrics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceMetricsDescriptor = $convert.base64Decode('Cg9SZXNvdXJjZU1ldHJpY3MSRQoIcmVzb3VyY2UYASABKAsyKS5vcGVudGVsZW1ldHJ5LnByb3RvLnJlc291cmNlLnYxLlJlc291cmNlUghyZXNvdXJjZRJRCg1zY29wZV9tZXRyaWNzGAIgAygLMiwub3BlbnRlbGVtZXRyeS5wcm90by5tZXRyaWNzLnYxLlNjb3BlTWV0cmljc1IMc2NvcGVNZXRyaWNzEh0KCnNjaGVtYV91cmwYAyABKAlSCXNjaGVtYVVybEoGCOgHEOkH');
@$core.Deprecated('Use scopeMetricsDescriptor instead')
const ScopeMetrics$json = const {
  '1': 'ScopeMetrics',
  '2': const [
    const {'1': 'scope', '3': 1, '4': 1, '5': 11, '6': '.opentelemetry.proto.common.v1.InstrumentationScope', '10': 'scope'},
    const {'1': 'metrics', '3': 2, '4': 3, '5': 11, '6': '.opentelemetry.proto.metrics.v1.Metric', '10': 'metrics'},
    const {'1': 'schema_url', '3': 3, '4': 1, '5': 9, '10': 'schemaUrl'},
  ],
};

/// Descriptor for `ScopeMetrics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scopeMetricsDescriptor = $convert.base64Decode('CgxTY29wZU1ldHJpY3MSSQoFc2NvcGUYASABKAsyMy5vcGVudGVsZW1ldHJ5LnByb3RvLmNvbW1vbi52MS5JbnN0cnVtZW50YXRpb25TY29wZVIFc2NvcGUSQAoHbWV0cmljcxgCIAMoCzImLm9wZW50ZWxlbWV0cnkucHJvdG8ubWV0cmljcy52MS5NZXRyaWNSB21ldHJpY3MSHQoKc2NoZW1hX3VybBgDIAEoCVIJc2NoZW1hVXJs');
@$core.Deprecated('Use metricDescriptor instead')
const Metric$json = const {
  '1': 'Metric',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'unit', '3': 3, '4': 1, '5': 9, '10': 'unit'},
    const {'1': 'gauge', '3': 5, '4': 1, '5': 11, '6': '.opentelemetry.proto.metrics.v1.Gauge', '9': 0, '10': 'gauge'},
    const {'1': 'sum', '3': 7, '4': 1, '5': 11, '6': '.opentelemetry.proto.metrics.v1.Sum', '9': 0, '10': 'sum'},
    const {'1': 'histogram', '3': 9, '4': 1, '5': 11, '6': '.opentelemetry.proto.metrics.v1.Histogram', '9': 0, '10': 'histogram'},
    const {'1': 'exponential_histogram', '3': 10, '4': 1, '5': 11, '6': '.opentelemetry.proto.metrics.v1.ExponentialHistogram', '9': 0, '10': 'exponentialHistogram'},
    const {'1': 'summary', '3': 11, '4': 1, '5': 11, '6': '.opentelemetry.proto.metrics.v1.Summary', '9': 0, '10': 'summary'},
  ],
  '8': const [
    const {'1': 'data'},
  ],
  '9': const [
    const {'1': 4, '2': 5},
    const {'1': 6, '2': 7},
    const {'1': 8, '2': 9},
  ],
};

/// Descriptor for `Metric`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metricDescriptor = $convert.base64Decode('CgZNZXRyaWMSEgoEbmFtZRgBIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SEgoEdW5pdBgDIAEoCVIEdW5pdBI9CgVnYXVnZRgFIAEoCzIlLm9wZW50ZWxlbWV0cnkucHJvdG8ubWV0cmljcy52MS5HYXVnZUgAUgVnYXVnZRI3CgNzdW0YByABKAsyIy5vcGVudGVsZW1ldHJ5LnByb3RvLm1ldHJpY3MudjEuU3VtSABSA3N1bRJJCgloaXN0b2dyYW0YCSABKAsyKS5vcGVudGVsZW1ldHJ5LnByb3RvLm1ldHJpY3MudjEuSGlzdG9ncmFtSABSCWhpc3RvZ3JhbRJrChVleHBvbmVudGlhbF9oaXN0b2dyYW0YCiABKAsyNC5vcGVudGVsZW1ldHJ5LnByb3RvLm1ldHJpY3MudjEuRXhwb25lbnRpYWxIaXN0b2dyYW1IAFIUZXhwb25lbnRpYWxIaXN0b2dyYW0SQwoHc3VtbWFyeRgLIAEoCzInLm9wZW50ZWxlbWV0cnkucHJvdG8ubWV0cmljcy52MS5TdW1tYXJ5SABSB3N1bW1hcnlCBgoEZGF0YUoECAQQBUoECAYQB0oECAgQCQ==');
@$core.Deprecated('Use gaugeDescriptor instead')
const Gauge$json = const {
  '1': 'Gauge',
  '2': const [
    const {'1': 'data_points', '3': 1, '4': 3, '5': 11, '6': '.opentelemetry.proto.metrics.v1.NumberDataPoint', '10': 'dataPoints'},
  ],
};

/// Descriptor for `Gauge`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gaugeDescriptor = $convert.base64Decode('CgVHYXVnZRJQCgtkYXRhX3BvaW50cxgBIAMoCzIvLm9wZW50ZWxlbWV0cnkucHJvdG8ubWV0cmljcy52MS5OdW1iZXJEYXRhUG9pbnRSCmRhdGFQb2ludHM=');
@$core.Deprecated('Use sumDescriptor instead')
const Sum$json = const {
  '1': 'Sum',
  '2': const [
    const {'1': 'data_points', '3': 1, '4': 3, '5': 11, '6': '.opentelemetry.proto.metrics.v1.NumberDataPoint', '10': 'dataPoints'},
    const {'1': 'aggregation_temporality', '3': 2, '4': 1, '5': 14, '6': '.opentelemetry.proto.metrics.v1.AggregationTemporality', '10': 'aggregationTemporality'},
    const {'1': 'is_monotonic', '3': 3, '4': 1, '5': 8, '10': 'isMonotonic'},
  ],
};

/// Descriptor for `Sum`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sumDescriptor = $convert.base64Decode('CgNTdW0SUAoLZGF0YV9wb2ludHMYASADKAsyLy5vcGVudGVsZW1ldHJ5LnByb3RvLm1ldHJpY3MudjEuTnVtYmVyRGF0YVBvaW50UgpkYXRhUG9pbnRzEm8KF2FnZ3JlZ2F0aW9uX3RlbXBvcmFsaXR5GAIgASgOMjYub3BlbnRlbGVtZXRyeS5wcm90by5tZXRyaWNzLnYxLkFnZ3JlZ2F0aW9uVGVtcG9yYWxpdHlSFmFnZ3JlZ2F0aW9uVGVtcG9yYWxpdHkSIQoMaXNfbW9ub3RvbmljGAMgASgIUgtpc01vbm90b25pYw==');
@$core.Deprecated('Use histogramDescriptor instead')
const Histogram$json = const {
  '1': 'Histogram',
  '2': const [
    const {'1': 'data_points', '3': 1, '4': 3, '5': 11, '6': '.opentelemetry.proto.metrics.v1.HistogramDataPoint', '10': 'dataPoints'},
    const {'1': 'aggregation_temporality', '3': 2, '4': 1, '5': 14, '6': '.opentelemetry.proto.metrics.v1.AggregationTemporality', '10': 'aggregationTemporality'},
  ],
};

/// Descriptor for `Histogram`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List histogramDescriptor = $convert.base64Decode('CglIaXN0b2dyYW0SUwoLZGF0YV9wb2ludHMYASADKAsyMi5vcGVudGVsZW1ldHJ5LnByb3RvLm1ldHJpY3MudjEuSGlzdG9ncmFtRGF0YVBvaW50UgpkYXRhUG9pbnRzEm8KF2FnZ3JlZ2F0aW9uX3RlbXBvcmFsaXR5GAIgASgOMjYub3BlbnRlbGVtZXRyeS5wcm90by5tZXRyaWNzLnYxLkFnZ3JlZ2F0aW9uVGVtcG9yYWxpdHlSFmFnZ3JlZ2F0aW9uVGVtcG9yYWxpdHk=');
@$core.Deprecated('Use exponentialHistogramDescriptor instead')
const ExponentialHistogram$json = const {
  '1': 'ExponentialHistogram',
  '2': const [
    const {'1': 'data_points', '3': 1, '4': 3, '5': 11, '6': '.opentelemetry.proto.metrics.v1.ExponentialHistogramDataPoint', '10': 'dataPoints'},
    const {'1': 'aggregation_temporality', '3': 2, '4': 1, '5': 14, '6': '.opentelemetry.proto.metrics.v1.AggregationTemporality', '10': 'aggregationTemporality'},
  ],
};

/// Descriptor for `ExponentialHistogram`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exponentialHistogramDescriptor = $convert.base64Decode('ChRFeHBvbmVudGlhbEhpc3RvZ3JhbRJeCgtkYXRhX3BvaW50cxgBIAMoCzI9Lm9wZW50ZWxlbWV0cnkucHJvdG8ubWV0cmljcy52MS5FeHBvbmVudGlhbEhpc3RvZ3JhbURhdGFQb2ludFIKZGF0YVBvaW50cxJvChdhZ2dyZWdhdGlvbl90ZW1wb3JhbGl0eRgCIAEoDjI2Lm9wZW50ZWxlbWV0cnkucHJvdG8ubWV0cmljcy52MS5BZ2dyZWdhdGlvblRlbXBvcmFsaXR5UhZhZ2dyZWdhdGlvblRlbXBvcmFsaXR5');
@$core.Deprecated('Use summaryDescriptor instead')
const Summary$json = const {
  '1': 'Summary',
  '2': const [
    const {'1': 'data_points', '3': 1, '4': 3, '5': 11, '6': '.opentelemetry.proto.metrics.v1.SummaryDataPoint', '10': 'dataPoints'},
  ],
};

/// Descriptor for `Summary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List summaryDescriptor = $convert.base64Decode('CgdTdW1tYXJ5ElEKC2RhdGFfcG9pbnRzGAEgAygLMjAub3BlbnRlbGVtZXRyeS5wcm90by5tZXRyaWNzLnYxLlN1bW1hcnlEYXRhUG9pbnRSCmRhdGFQb2ludHM=');
@$core.Deprecated('Use numberDataPointDescriptor instead')
const NumberDataPoint$json = const {
  '1': 'NumberDataPoint',
  '2': const [
    const {'1': 'attributes', '3': 7, '4': 3, '5': 11, '6': '.opentelemetry.proto.common.v1.KeyValue', '10': 'attributes'},
    const {'1': 'start_time_unix_nano', '3': 2, '4': 1, '5': 6, '10': 'startTimeUnixNano'},
    const {'1': 'time_unix_nano', '3': 3, '4': 1, '5': 6, '10': 'timeUnixNano'},
    const {'1': 'as_double', '3': 4, '4': 1, '5': 1, '9': 0, '10': 'asDouble'},
    const {'1': 'as_int', '3': 6, '4': 1, '5': 16, '9': 0, '10': 'asInt'},
    const {'1': 'exemplars', '3': 5, '4': 3, '5': 11, '6': '.opentelemetry.proto.metrics.v1.Exemplar', '10': 'exemplars'},
    const {'1': 'flags', '3': 8, '4': 1, '5': 13, '10': 'flags'},
  ],
  '8': const [
    const {'1': 'value'},
  ],
  '9': const [
    const {'1': 1, '2': 2},
  ],
};

/// Descriptor for `NumberDataPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List numberDataPointDescriptor = $convert.base64Decode('Cg9OdW1iZXJEYXRhUG9pbnQSRwoKYXR0cmlidXRlcxgHIAMoCzInLm9wZW50ZWxlbWV0cnkucHJvdG8uY29tbW9uLnYxLktleVZhbHVlUgphdHRyaWJ1dGVzEi8KFHN0YXJ0X3RpbWVfdW5peF9uYW5vGAIgASgGUhFzdGFydFRpbWVVbml4TmFubxIkCg50aW1lX3VuaXhfbmFubxgDIAEoBlIMdGltZVVuaXhOYW5vEh0KCWFzX2RvdWJsZRgEIAEoAUgAUghhc0RvdWJsZRIXCgZhc19pbnQYBiABKBBIAFIFYXNJbnQSRgoJZXhlbXBsYXJzGAUgAygLMigub3BlbnRlbGVtZXRyeS5wcm90by5tZXRyaWNzLnYxLkV4ZW1wbGFyUglleGVtcGxhcnMSFAoFZmxhZ3MYCCABKA1SBWZsYWdzQgcKBXZhbHVlSgQIARAC');
@$core.Deprecated('Use histogramDataPointDescriptor instead')
const HistogramDataPoint$json = const {
  '1': 'HistogramDataPoint',
  '2': const [
    const {'1': 'attributes', '3': 9, '4': 3, '5': 11, '6': '.opentelemetry.proto.common.v1.KeyValue', '10': 'attributes'},
    const {'1': 'start_time_unix_nano', '3': 2, '4': 1, '5': 6, '10': 'startTimeUnixNano'},
    const {'1': 'time_unix_nano', '3': 3, '4': 1, '5': 6, '10': 'timeUnixNano'},
    const {'1': 'count', '3': 4, '4': 1, '5': 6, '10': 'count'},
    const {'1': 'sum', '3': 5, '4': 1, '5': 1, '9': 0, '10': 'sum', '17': true},
    const {'1': 'bucket_counts', '3': 6, '4': 3, '5': 6, '10': 'bucketCounts'},
    const {'1': 'explicit_bounds', '3': 7, '4': 3, '5': 1, '10': 'explicitBounds'},
    const {'1': 'exemplars', '3': 8, '4': 3, '5': 11, '6': '.opentelemetry.proto.metrics.v1.Exemplar', '10': 'exemplars'},
    const {'1': 'flags', '3': 10, '4': 1, '5': 13, '10': 'flags'},
    const {'1': 'min', '3': 11, '4': 1, '5': 1, '9': 1, '10': 'min', '17': true},
    const {'1': 'max', '3': 12, '4': 1, '5': 1, '9': 2, '10': 'max', '17': true},
  ],
  '8': const [
    const {'1': '_sum'},
    const {'1': '_min'},
    const {'1': '_max'},
  ],
  '9': const [
    const {'1': 1, '2': 2},
  ],
};

/// Descriptor for `HistogramDataPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List histogramDataPointDescriptor = $convert.base64Decode('ChJIaXN0b2dyYW1EYXRhUG9pbnQSRwoKYXR0cmlidXRlcxgJIAMoCzInLm9wZW50ZWxlbWV0cnkucHJvdG8uY29tbW9uLnYxLktleVZhbHVlUgphdHRyaWJ1dGVzEi8KFHN0YXJ0X3RpbWVfdW5peF9uYW5vGAIgASgGUhFzdGFydFRpbWVVbml4TmFubxIkCg50aW1lX3VuaXhfbmFubxgDIAEoBlIMdGltZVVuaXhOYW5vEhQKBWNvdW50GAQgASgGUgVjb3VudBIVCgNzdW0YBSABKAFIAFIDc3VtiAEBEiMKDWJ1Y2tldF9jb3VudHMYBiADKAZSDGJ1Y2tldENvdW50cxInCg9leHBsaWNpdF9ib3VuZHMYByADKAFSDmV4cGxpY2l0Qm91bmRzEkYKCWV4ZW1wbGFycxgIIAMoCzIoLm9wZW50ZWxlbWV0cnkucHJvdG8ubWV0cmljcy52MS5FeGVtcGxhclIJZXhlbXBsYXJzEhQKBWZsYWdzGAogASgNUgVmbGFncxIVCgNtaW4YCyABKAFIAVIDbWluiAEBEhUKA21heBgMIAEoAUgCUgNtYXiIAQFCBgoEX3N1bUIGCgRfbWluQgYKBF9tYXhKBAgBEAI=');
@$core.Deprecated('Use exponentialHistogramDataPointDescriptor instead')
const ExponentialHistogramDataPoint$json = const {
  '1': 'ExponentialHistogramDataPoint',
  '2': const [
    const {'1': 'attributes', '3': 1, '4': 3, '5': 11, '6': '.opentelemetry.proto.common.v1.KeyValue', '10': 'attributes'},
    const {'1': 'start_time_unix_nano', '3': 2, '4': 1, '5': 6, '10': 'startTimeUnixNano'},
    const {'1': 'time_unix_nano', '3': 3, '4': 1, '5': 6, '10': 'timeUnixNano'},
    const {'1': 'count', '3': 4, '4': 1, '5': 6, '10': 'count'},
    const {'1': 'sum', '3': 5, '4': 1, '5': 1, '9': 0, '10': 'sum', '17': true},
    const {'1': 'scale', '3': 6, '4': 1, '5': 17, '10': 'scale'},
    const {'1': 'zero_count', '3': 7, '4': 1, '5': 6, '10': 'zeroCount'},
    const {'1': 'positive', '3': 8, '4': 1, '5': 11, '6': '.opentelemetry.proto.metrics.v1.ExponentialHistogramDataPoint.Buckets', '10': 'positive'},
    const {'1': 'negative', '3': 9, '4': 1, '5': 11, '6': '.opentelemetry.proto.metrics.v1.ExponentialHistogramDataPoint.Buckets', '10': 'negative'},
    const {'1': 'flags', '3': 10, '4': 1, '5': 13, '10': 'flags'},
    const {'1': 'exemplars', '3': 11, '4': 3, '5': 11, '6': '.opentelemetry.proto.metrics.v1.Exemplar', '10': 'exemplars'},
    const {'1': 'min', '3': 12, '4': 1, '5': 1, '9': 1, '10': 'min', '17': true},
    const {'1': 'max', '3': 13, '4': 1, '5': 1, '9': 2, '10': 'max', '17': true},
  ],
  '3': const [ExponentialHistogramDataPoint_Buckets$json],
  '8': const [
    const {'1': '_sum'},
    const {'1': '_min'},
    const {'1': '_max'},
  ],
};

@$core.Deprecated('Use exponentialHistogramDataPointDescriptor instead')
const ExponentialHistogramDataPoint_Buckets$json = const {
  '1': 'Buckets',
  '2': const [
    const {'1': 'offset', '3': 1, '4': 1, '5': 17, '10': 'offset'},
    const {'1': 'bucket_counts', '3': 2, '4': 3, '5': 4, '10': 'bucketCounts'},
  ],
};

/// Descriptor for `ExponentialHistogramDataPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exponentialHistogramDataPointDescriptor = $convert.base64Decode('Ch1FeHBvbmVudGlhbEhpc3RvZ3JhbURhdGFQb2ludBJHCgphdHRyaWJ1dGVzGAEgAygLMicub3BlbnRlbGVtZXRyeS5wcm90by5jb21tb24udjEuS2V5VmFsdWVSCmF0dHJpYnV0ZXMSLwoUc3RhcnRfdGltZV91bml4X25hbm8YAiABKAZSEXN0YXJ0VGltZVVuaXhOYW5vEiQKDnRpbWVfdW5peF9uYW5vGAMgASgGUgx0aW1lVW5peE5hbm8SFAoFY291bnQYBCABKAZSBWNvdW50EhUKA3N1bRgFIAEoAUgAUgNzdW2IAQESFAoFc2NhbGUYBiABKBFSBXNjYWxlEh0KCnplcm9fY291bnQYByABKAZSCXplcm9Db3VudBJhCghwb3NpdGl2ZRgIIAEoCzJFLm9wZW50ZWxlbWV0cnkucHJvdG8ubWV0cmljcy52MS5FeHBvbmVudGlhbEhpc3RvZ3JhbURhdGFQb2ludC5CdWNrZXRzUghwb3NpdGl2ZRJhCghuZWdhdGl2ZRgJIAEoCzJFLm9wZW50ZWxlbWV0cnkucHJvdG8ubWV0cmljcy52MS5FeHBvbmVudGlhbEhpc3RvZ3JhbURhdGFQb2ludC5CdWNrZXRzUghuZWdhdGl2ZRIUCgVmbGFncxgKIAEoDVIFZmxhZ3MSRgoJZXhlbXBsYXJzGAsgAygLMigub3BlbnRlbGVtZXRyeS5wcm90by5tZXRyaWNzLnYxLkV4ZW1wbGFyUglleGVtcGxhcnMSFQoDbWluGAwgASgBSAFSA21pbogBARIVCgNtYXgYDSABKAFIAlIDbWF4iAEBGkYKB0J1Y2tldHMSFgoGb2Zmc2V0GAEgASgRUgZvZmZzZXQSIwoNYnVja2V0X2NvdW50cxgCIAMoBFIMYnVja2V0Q291bnRzQgYKBF9zdW1CBgoEX21pbkIGCgRfbWF4');
@$core.Deprecated('Use summaryDataPointDescriptor instead')
const SummaryDataPoint$json = const {
  '1': 'SummaryDataPoint',
  '2': const [
    const {'1': 'attributes', '3': 7, '4': 3, '5': 11, '6': '.opentelemetry.proto.common.v1.KeyValue', '10': 'attributes'},
    const {'1': 'start_time_unix_nano', '3': 2, '4': 1, '5': 6, '10': 'startTimeUnixNano'},
    const {'1': 'time_unix_nano', '3': 3, '4': 1, '5': 6, '10': 'timeUnixNano'},
    const {'1': 'count', '3': 4, '4': 1, '5': 6, '10': 'count'},
    const {'1': 'sum', '3': 5, '4': 1, '5': 1, '10': 'sum'},
    const {'1': 'quantile_values', '3': 6, '4': 3, '5': 11, '6': '.opentelemetry.proto.metrics.v1.SummaryDataPoint.ValueAtQuantile', '10': 'quantileValues'},
    const {'1': 'flags', '3': 8, '4': 1, '5': 13, '10': 'flags'},
  ],
  '3': const [SummaryDataPoint_ValueAtQuantile$json],
  '9': const [
    const {'1': 1, '2': 2},
  ],
};

@$core.Deprecated('Use summaryDataPointDescriptor instead')
const SummaryDataPoint_ValueAtQuantile$json = const {
  '1': 'ValueAtQuantile',
  '2': const [
    const {'1': 'quantile', '3': 1, '4': 1, '5': 1, '10': 'quantile'},
    const {'1': 'value', '3': 2, '4': 1, '5': 1, '10': 'value'},
  ],
};

/// Descriptor for `SummaryDataPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List summaryDataPointDescriptor = $convert.base64Decode('ChBTdW1tYXJ5RGF0YVBvaW50EkcKCmF0dHJpYnV0ZXMYByADKAsyJy5vcGVudGVsZW1ldHJ5LnByb3RvLmNvbW1vbi52MS5LZXlWYWx1ZVIKYXR0cmlidXRlcxIvChRzdGFydF90aW1lX3VuaXhfbmFubxgCIAEoBlIRc3RhcnRUaW1lVW5peE5hbm8SJAoOdGltZV91bml4X25hbm8YAyABKAZSDHRpbWVVbml4TmFubxIUCgVjb3VudBgEIAEoBlIFY291bnQSEAoDc3VtGAUgASgBUgNzdW0SaQoPcXVhbnRpbGVfdmFsdWVzGAYgAygLMkAub3BlbnRlbGVtZXRyeS5wcm90by5tZXRyaWNzLnYxLlN1bW1hcnlEYXRhUG9pbnQuVmFsdWVBdFF1YW50aWxlUg5xdWFudGlsZVZhbHVlcxIUCgVmbGFncxgIIAEoDVIFZmxhZ3MaQwoPVmFsdWVBdFF1YW50aWxlEhoKCHF1YW50aWxlGAEgASgBUghxdWFudGlsZRIUCgV2YWx1ZRgCIAEoAVIFdmFsdWVKBAgBEAI=');
@$core.Deprecated('Use exemplarDescriptor instead')
const Exemplar$json = const {
  '1': 'Exemplar',
  '2': const [
    const {'1': 'filtered_attributes', '3': 7, '4': 3, '5': 11, '6': '.opentelemetry.proto.common.v1.KeyValue', '10': 'filteredAttributes'},
    const {'1': 'time_unix_nano', '3': 2, '4': 1, '5': 6, '10': 'timeUnixNano'},
    const {'1': 'as_double', '3': 3, '4': 1, '5': 1, '9': 0, '10': 'asDouble'},
    const {'1': 'as_int', '3': 6, '4': 1, '5': 16, '9': 0, '10': 'asInt'},
    const {'1': 'span_id', '3': 4, '4': 1, '5': 12, '10': 'spanId'},
    const {'1': 'trace_id', '3': 5, '4': 1, '5': 12, '10': 'traceId'},
  ],
  '8': const [
    const {'1': 'value'},
  ],
  '9': const [
    const {'1': 1, '2': 2},
  ],
};

/// Descriptor for `Exemplar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exemplarDescriptor = $convert.base64Decode('CghFeGVtcGxhchJYChNmaWx0ZXJlZF9hdHRyaWJ1dGVzGAcgAygLMicub3BlbnRlbGVtZXRyeS5wcm90by5jb21tb24udjEuS2V5VmFsdWVSEmZpbHRlcmVkQXR0cmlidXRlcxIkCg50aW1lX3VuaXhfbmFubxgCIAEoBlIMdGltZVVuaXhOYW5vEh0KCWFzX2RvdWJsZRgDIAEoAUgAUghhc0RvdWJsZRIXCgZhc19pbnQYBiABKBBIAFIFYXNJbnQSFwoHc3Bhbl9pZBgEIAEoDFIGc3BhbklkEhkKCHRyYWNlX2lkGAUgASgMUgd0cmFjZUlkQgcKBXZhbHVlSgQIARAC');
