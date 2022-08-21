///
//  Generated code. Do not modify.
//  source: opentelemetry/proto/collector/metrics/v1/metrics_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../metrics/v1/metrics.pb.dart' as $0;

class ExportMetricsServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExportMetricsServiceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.collector.metrics.v1'), createEmptyInstance: create)
    ..pc<$0.ResourceMetrics>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resourceMetrics', $pb.PbFieldType.PM, subBuilder: $0.ResourceMetrics.create)
    ..hasRequiredFields = false
  ;

  ExportMetricsServiceRequest._() : super();
  factory ExportMetricsServiceRequest({
    $core.Iterable<$0.ResourceMetrics>? resourceMetrics,
  }) {
    final _result = create();
    if (resourceMetrics != null) {
      _result.resourceMetrics.addAll(resourceMetrics);
    }
    return _result;
  }
  factory ExportMetricsServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExportMetricsServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExportMetricsServiceRequest clone() => ExportMetricsServiceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExportMetricsServiceRequest copyWith(void Function(ExportMetricsServiceRequest) updates) => super.copyWith((message) => updates(message as ExportMetricsServiceRequest)) as ExportMetricsServiceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExportMetricsServiceRequest create() => ExportMetricsServiceRequest._();
  ExportMetricsServiceRequest createEmptyInstance() => create();
  static $pb.PbList<ExportMetricsServiceRequest> createRepeated() => $pb.PbList<ExportMetricsServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static ExportMetricsServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExportMetricsServiceRequest>(create);
  static ExportMetricsServiceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.ResourceMetrics> get resourceMetrics => $_getList(0);
}

class ExportMetricsServiceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExportMetricsServiceResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.collector.metrics.v1'), createEmptyInstance: create)
    ..aOM<ExportMetricsPartialSuccess>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partialSuccess', subBuilder: ExportMetricsPartialSuccess.create)
    ..hasRequiredFields = false
  ;

  ExportMetricsServiceResponse._() : super();
  factory ExportMetricsServiceResponse({
    ExportMetricsPartialSuccess? partialSuccess,
  }) {
    final _result = create();
    if (partialSuccess != null) {
      _result.partialSuccess = partialSuccess;
    }
    return _result;
  }
  factory ExportMetricsServiceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExportMetricsServiceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExportMetricsServiceResponse clone() => ExportMetricsServiceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExportMetricsServiceResponse copyWith(void Function(ExportMetricsServiceResponse) updates) => super.copyWith((message) => updates(message as ExportMetricsServiceResponse)) as ExportMetricsServiceResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExportMetricsServiceResponse create() => ExportMetricsServiceResponse._();
  ExportMetricsServiceResponse createEmptyInstance() => create();
  static $pb.PbList<ExportMetricsServiceResponse> createRepeated() => $pb.PbList<ExportMetricsServiceResponse>();
  @$core.pragma('dart2js:noInline')
  static ExportMetricsServiceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExportMetricsServiceResponse>(create);
  static ExportMetricsServiceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ExportMetricsPartialSuccess get partialSuccess => $_getN(0);
  @$pb.TagNumber(1)
  set partialSuccess(ExportMetricsPartialSuccess v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPartialSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartialSuccess() => clearField(1);
  @$pb.TagNumber(1)
  ExportMetricsPartialSuccess ensurePartialSuccess() => $_ensure(0);
}

class ExportMetricsPartialSuccess extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExportMetricsPartialSuccess', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.collector.metrics.v1'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rejectedDataPoints')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorMessage')
    ..hasRequiredFields = false
  ;

  ExportMetricsPartialSuccess._() : super();
  factory ExportMetricsPartialSuccess({
    $fixnum.Int64? rejectedDataPoints,
    $core.String? errorMessage,
  }) {
    final _result = create();
    if (rejectedDataPoints != null) {
      _result.rejectedDataPoints = rejectedDataPoints;
    }
    if (errorMessage != null) {
      _result.errorMessage = errorMessage;
    }
    return _result;
  }
  factory ExportMetricsPartialSuccess.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExportMetricsPartialSuccess.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExportMetricsPartialSuccess clone() => ExportMetricsPartialSuccess()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExportMetricsPartialSuccess copyWith(void Function(ExportMetricsPartialSuccess) updates) => super.copyWith((message) => updates(message as ExportMetricsPartialSuccess)) as ExportMetricsPartialSuccess; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExportMetricsPartialSuccess create() => ExportMetricsPartialSuccess._();
  ExportMetricsPartialSuccess createEmptyInstance() => create();
  static $pb.PbList<ExportMetricsPartialSuccess> createRepeated() => $pb.PbList<ExportMetricsPartialSuccess>();
  @$core.pragma('dart2js:noInline')
  static ExportMetricsPartialSuccess getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExportMetricsPartialSuccess>(create);
  static ExportMetricsPartialSuccess? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get rejectedDataPoints => $_getI64(0);
  @$pb.TagNumber(1)
  set rejectedDataPoints($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRejectedDataPoints() => $_has(0);
  @$pb.TagNumber(1)
  void clearRejectedDataPoints() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errorMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set errorMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrorMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorMessage() => clearField(2);
}

class MetricsServiceApi {
  $pb.RpcClient _client;
  MetricsServiceApi(this._client);

  $async.Future<ExportMetricsServiceResponse> export($pb.ClientContext? ctx, ExportMetricsServiceRequest request) {
    var emptyResponse = ExportMetricsServiceResponse();
    return _client.invoke<ExportMetricsServiceResponse>(ctx, 'MetricsService', 'Export', request, emptyResponse);
  }
}

