///
//  Generated code. Do not modify.
//  source: opentelemetry/proto/collector/logs/v1/logs_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../logs/v1/logs.pb.dart' as $0;

class ExportLogsServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExportLogsServiceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.collector.logs.v1'), createEmptyInstance: create)
    ..pc<$0.ResourceLogs>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resourceLogs', $pb.PbFieldType.PM, subBuilder: $0.ResourceLogs.create)
    ..hasRequiredFields = false
  ;

  ExportLogsServiceRequest._() : super();
  factory ExportLogsServiceRequest({
    $core.Iterable<$0.ResourceLogs>? resourceLogs,
  }) {
    final _result = create();
    if (resourceLogs != null) {
      _result.resourceLogs.addAll(resourceLogs);
    }
    return _result;
  }
  factory ExportLogsServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExportLogsServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExportLogsServiceRequest clone() => ExportLogsServiceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExportLogsServiceRequest copyWith(void Function(ExportLogsServiceRequest) updates) => super.copyWith((message) => updates(message as ExportLogsServiceRequest)) as ExportLogsServiceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExportLogsServiceRequest create() => ExportLogsServiceRequest._();
  ExportLogsServiceRequest createEmptyInstance() => create();
  static $pb.PbList<ExportLogsServiceRequest> createRepeated() => $pb.PbList<ExportLogsServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static ExportLogsServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExportLogsServiceRequest>(create);
  static ExportLogsServiceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.ResourceLogs> get resourceLogs => $_getList(0);
}

class ExportLogsServiceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExportLogsServiceResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.collector.logs.v1'), createEmptyInstance: create)
    ..aOM<ExportLogsPartialSuccess>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partialSuccess', subBuilder: ExportLogsPartialSuccess.create)
    ..hasRequiredFields = false
  ;

  ExportLogsServiceResponse._() : super();
  factory ExportLogsServiceResponse({
    ExportLogsPartialSuccess? partialSuccess,
  }) {
    final _result = create();
    if (partialSuccess != null) {
      _result.partialSuccess = partialSuccess;
    }
    return _result;
  }
  factory ExportLogsServiceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExportLogsServiceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExportLogsServiceResponse clone() => ExportLogsServiceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExportLogsServiceResponse copyWith(void Function(ExportLogsServiceResponse) updates) => super.copyWith((message) => updates(message as ExportLogsServiceResponse)) as ExportLogsServiceResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExportLogsServiceResponse create() => ExportLogsServiceResponse._();
  ExportLogsServiceResponse createEmptyInstance() => create();
  static $pb.PbList<ExportLogsServiceResponse> createRepeated() => $pb.PbList<ExportLogsServiceResponse>();
  @$core.pragma('dart2js:noInline')
  static ExportLogsServiceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExportLogsServiceResponse>(create);
  static ExportLogsServiceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ExportLogsPartialSuccess get partialSuccess => $_getN(0);
  @$pb.TagNumber(1)
  set partialSuccess(ExportLogsPartialSuccess v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPartialSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartialSuccess() => clearField(1);
  @$pb.TagNumber(1)
  ExportLogsPartialSuccess ensurePartialSuccess() => $_ensure(0);
}

class ExportLogsPartialSuccess extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExportLogsPartialSuccess', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.collector.logs.v1'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rejectedLogRecords')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorMessage')
    ..hasRequiredFields = false
  ;

  ExportLogsPartialSuccess._() : super();
  factory ExportLogsPartialSuccess({
    $fixnum.Int64? rejectedLogRecords,
    $core.String? errorMessage,
  }) {
    final _result = create();
    if (rejectedLogRecords != null) {
      _result.rejectedLogRecords = rejectedLogRecords;
    }
    if (errorMessage != null) {
      _result.errorMessage = errorMessage;
    }
    return _result;
  }
  factory ExportLogsPartialSuccess.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExportLogsPartialSuccess.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExportLogsPartialSuccess clone() => ExportLogsPartialSuccess()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExportLogsPartialSuccess copyWith(void Function(ExportLogsPartialSuccess) updates) => super.copyWith((message) => updates(message as ExportLogsPartialSuccess)) as ExportLogsPartialSuccess; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExportLogsPartialSuccess create() => ExportLogsPartialSuccess._();
  ExportLogsPartialSuccess createEmptyInstance() => create();
  static $pb.PbList<ExportLogsPartialSuccess> createRepeated() => $pb.PbList<ExportLogsPartialSuccess>();
  @$core.pragma('dart2js:noInline')
  static ExportLogsPartialSuccess getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExportLogsPartialSuccess>(create);
  static ExportLogsPartialSuccess? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get rejectedLogRecords => $_getI64(0);
  @$pb.TagNumber(1)
  set rejectedLogRecords($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRejectedLogRecords() => $_has(0);
  @$pb.TagNumber(1)
  void clearRejectedLogRecords() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errorMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set errorMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrorMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorMessage() => clearField(2);
}

class LogsServiceApi {
  $pb.RpcClient _client;
  LogsServiceApi(this._client);

  $async.Future<ExportLogsServiceResponse> export($pb.ClientContext? ctx, ExportLogsServiceRequest request) {
    var emptyResponse = ExportLogsServiceResponse();
    return _client.invoke<ExportLogsServiceResponse>(ctx, 'LogsService', 'Export', request, emptyResponse);
  }
}

