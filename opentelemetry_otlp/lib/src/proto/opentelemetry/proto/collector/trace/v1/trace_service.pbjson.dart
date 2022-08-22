///
//  Generated code. Do not modify.
//  source: opentelemetry/proto/collector/trace/v1/trace_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import '../../../trace/v1/trace.pbjson.dart' as $0;
import '../../../resource/v1/resource.pbjson.dart' as $1;
import '../../../common/v1/common.pbjson.dart' as $2;

@$core.Deprecated('Use exportTraceServiceRequestDescriptor instead')
const ExportTraceServiceRequest$json = const {
  '1': 'ExportTraceServiceRequest',
  '2': const [
    const {'1': 'resource_spans', '3': 1, '4': 3, '5': 11, '6': '.opentelemetry.proto.trace.v1.ResourceSpans', '10': 'resourceSpans'},
  ],
};

/// Descriptor for `ExportTraceServiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exportTraceServiceRequestDescriptor = $convert.base64Decode('ChlFeHBvcnRUcmFjZVNlcnZpY2VSZXF1ZXN0ElIKDnJlc291cmNlX3NwYW5zGAEgAygLMisub3BlbnRlbGVtZXRyeS5wcm90by50cmFjZS52MS5SZXNvdXJjZVNwYW5zUg1yZXNvdXJjZVNwYW5z');
@$core.Deprecated('Use exportTraceServiceResponseDescriptor instead')
const ExportTraceServiceResponse$json = const {
  '1': 'ExportTraceServiceResponse',
  '2': const [
    const {'1': 'partial_success', '3': 1, '4': 1, '5': 11, '6': '.opentelemetry.proto.collector.trace.v1.ExportTracePartialSuccess', '10': 'partialSuccess'},
  ],
};

/// Descriptor for `ExportTraceServiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exportTraceServiceResponseDescriptor = $convert.base64Decode('ChpFeHBvcnRUcmFjZVNlcnZpY2VSZXNwb25zZRJqCg9wYXJ0aWFsX3N1Y2Nlc3MYASABKAsyQS5vcGVudGVsZW1ldHJ5LnByb3RvLmNvbGxlY3Rvci50cmFjZS52MS5FeHBvcnRUcmFjZVBhcnRpYWxTdWNjZXNzUg5wYXJ0aWFsU3VjY2Vzcw==');
@$core.Deprecated('Use exportTracePartialSuccessDescriptor instead')
const ExportTracePartialSuccess$json = const {
  '1': 'ExportTracePartialSuccess',
  '2': const [
    const {'1': 'rejected_spans', '3': 1, '4': 1, '5': 3, '10': 'rejectedSpans'},
    const {'1': 'error_message', '3': 2, '4': 1, '5': 9, '10': 'errorMessage'},
  ],
};

/// Descriptor for `ExportTracePartialSuccess`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exportTracePartialSuccessDescriptor = $convert.base64Decode('ChlFeHBvcnRUcmFjZVBhcnRpYWxTdWNjZXNzEiUKDnJlamVjdGVkX3NwYW5zGAEgASgDUg1yZWplY3RlZFNwYW5zEiMKDWVycm9yX21lc3NhZ2UYAiABKAlSDGVycm9yTWVzc2FnZQ==');
const $core.Map<$core.String, $core.dynamic> TraceServiceBase$json = const {
  '1': 'TraceService',
  '2': const [
    const {'1': 'Export', '2': '.opentelemetry.proto.collector.trace.v1.ExportTraceServiceRequest', '3': '.opentelemetry.proto.collector.trace.v1.ExportTraceServiceResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use traceServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> TraceServiceBase$messageJson = const {
  '.opentelemetry.proto.collector.trace.v1.ExportTraceServiceRequest': ExportTraceServiceRequest$json,
  '.opentelemetry.proto.trace.v1.ResourceSpans': $0.ResourceSpans$json,
  '.opentelemetry.proto.resource.v1.Resource': $1.Resource$json,
  '.opentelemetry.proto.common.v1.KeyValue': $2.KeyValue$json,
  '.opentelemetry.proto.common.v1.AnyValue': $2.AnyValue$json,
  '.opentelemetry.proto.common.v1.ArrayValue': $2.ArrayValue$json,
  '.opentelemetry.proto.common.v1.KeyValueList': $2.KeyValueList$json,
  '.opentelemetry.proto.trace.v1.ScopeSpans': $0.ScopeSpans$json,
  '.opentelemetry.proto.common.v1.InstrumentationScope': $2.InstrumentationScope$json,
  '.opentelemetry.proto.trace.v1.Span': $0.Span$json,
  '.opentelemetry.proto.trace.v1.Span.Event': $0.Span_Event$json,
  '.opentelemetry.proto.trace.v1.Span.Link': $0.Span_Link$json,
  '.opentelemetry.proto.trace.v1.Status': $0.Status$json,
  '.opentelemetry.proto.collector.trace.v1.ExportTraceServiceResponse': ExportTraceServiceResponse$json,
  '.opentelemetry.proto.collector.trace.v1.ExportTracePartialSuccess': ExportTracePartialSuccess$json,
};

/// Descriptor for `TraceService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List traceServiceDescriptor = $convert.base64Decode('CgxUcmFjZVNlcnZpY2USkQEKBkV4cG9ydBJBLm9wZW50ZWxlbWV0cnkucHJvdG8uY29sbGVjdG9yLnRyYWNlLnYxLkV4cG9ydFRyYWNlU2VydmljZVJlcXVlc3QaQi5vcGVudGVsZW1ldHJ5LnByb3RvLmNvbGxlY3Rvci50cmFjZS52MS5FeHBvcnRUcmFjZVNlcnZpY2VSZXNwb25zZSIA');
