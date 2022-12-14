///
//  Generated code. Do not modify.
//  source: opentelemetry/proto/collector/logs/v1/logs_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import '../../../logs/v1/logs.pbjson.dart' as $0;
import '../../../resource/v1/resource.pbjson.dart' as $1;
import '../../../common/v1/common.pbjson.dart' as $2;

@$core.Deprecated('Use exportLogsServiceRequestDescriptor instead')
const ExportLogsServiceRequest$json = const {
  '1': 'ExportLogsServiceRequest',
  '2': const [
    const {'1': 'resource_logs', '3': 1, '4': 3, '5': 11, '6': '.opentelemetry.proto.logs.v1.ResourceLogs', '10': 'resourceLogs'},
  ],
};

/// Descriptor for `ExportLogsServiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exportLogsServiceRequestDescriptor = $convert.base64Decode('ChhFeHBvcnRMb2dzU2VydmljZVJlcXVlc3QSTgoNcmVzb3VyY2VfbG9ncxgBIAMoCzIpLm9wZW50ZWxlbWV0cnkucHJvdG8ubG9ncy52MS5SZXNvdXJjZUxvZ3NSDHJlc291cmNlTG9ncw==');
@$core.Deprecated('Use exportLogsServiceResponseDescriptor instead')
const ExportLogsServiceResponse$json = const {
  '1': 'ExportLogsServiceResponse',
  '2': const [
    const {'1': 'partial_success', '3': 1, '4': 1, '5': 11, '6': '.opentelemetry.proto.collector.logs.v1.ExportLogsPartialSuccess', '10': 'partialSuccess'},
  ],
};

/// Descriptor for `ExportLogsServiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exportLogsServiceResponseDescriptor = $convert.base64Decode('ChlFeHBvcnRMb2dzU2VydmljZVJlc3BvbnNlEmgKD3BhcnRpYWxfc3VjY2VzcxgBIAEoCzI/Lm9wZW50ZWxlbWV0cnkucHJvdG8uY29sbGVjdG9yLmxvZ3MudjEuRXhwb3J0TG9nc1BhcnRpYWxTdWNjZXNzUg5wYXJ0aWFsU3VjY2Vzcw==');
@$core.Deprecated('Use exportLogsPartialSuccessDescriptor instead')
const ExportLogsPartialSuccess$json = const {
  '1': 'ExportLogsPartialSuccess',
  '2': const [
    const {'1': 'rejected_log_records', '3': 1, '4': 1, '5': 3, '10': 'rejectedLogRecords'},
    const {'1': 'error_message', '3': 2, '4': 1, '5': 9, '10': 'errorMessage'},
  ],
};

/// Descriptor for `ExportLogsPartialSuccess`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exportLogsPartialSuccessDescriptor = $convert.base64Decode('ChhFeHBvcnRMb2dzUGFydGlhbFN1Y2Nlc3MSMAoUcmVqZWN0ZWRfbG9nX3JlY29yZHMYASABKANSEnJlamVjdGVkTG9nUmVjb3JkcxIjCg1lcnJvcl9tZXNzYWdlGAIgASgJUgxlcnJvck1lc3NhZ2U=');
const $core.Map<$core.String, $core.dynamic> LogsServiceBase$json = const {
  '1': 'LogsService',
  '2': const [
    const {'1': 'Export', '2': '.opentelemetry.proto.collector.logs.v1.ExportLogsServiceRequest', '3': '.opentelemetry.proto.collector.logs.v1.ExportLogsServiceResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use logsServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> LogsServiceBase$messageJson = const {
  '.opentelemetry.proto.collector.logs.v1.ExportLogsServiceRequest': ExportLogsServiceRequest$json,
  '.opentelemetry.proto.logs.v1.ResourceLogs': $0.ResourceLogs$json,
  '.opentelemetry.proto.resource.v1.Resource': $1.Resource$json,
  '.opentelemetry.proto.common.v1.KeyValue': $2.KeyValue$json,
  '.opentelemetry.proto.common.v1.AnyValue': $2.AnyValue$json,
  '.opentelemetry.proto.common.v1.ArrayValue': $2.ArrayValue$json,
  '.opentelemetry.proto.common.v1.KeyValueList': $2.KeyValueList$json,
  '.opentelemetry.proto.logs.v1.ScopeLogs': $0.ScopeLogs$json,
  '.opentelemetry.proto.common.v1.InstrumentationScope': $2.InstrumentationScope$json,
  '.opentelemetry.proto.logs.v1.LogRecord': $0.LogRecord$json,
  '.opentelemetry.proto.collector.logs.v1.ExportLogsServiceResponse': ExportLogsServiceResponse$json,
  '.opentelemetry.proto.collector.logs.v1.ExportLogsPartialSuccess': ExportLogsPartialSuccess$json,
};

/// Descriptor for `LogsService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List logsServiceDescriptor = $convert.base64Decode('CgtMb2dzU2VydmljZRKNAQoGRXhwb3J0Ej8ub3BlbnRlbGVtZXRyeS5wcm90by5jb2xsZWN0b3IubG9ncy52MS5FeHBvcnRMb2dzU2VydmljZVJlcXVlc3QaQC5vcGVudGVsZW1ldHJ5LnByb3RvLmNvbGxlY3Rvci5sb2dzLnYxLkV4cG9ydExvZ3NTZXJ2aWNlUmVzcG9uc2UiAA==');
