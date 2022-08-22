///
//  Generated code. Do not modify.
//  source: opentelemetry/proto/logs/v1/logs.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../resource/v1/resource.pb.dart' as $0;
import '../../common/v1/common.pb.dart' as $1;

import 'logs.pbenum.dart';

export 'logs.pbenum.dart';

class LogsData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LogsData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.logs.v1'), createEmptyInstance: create)
    ..pc<ResourceLogs>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resourceLogs', $pb.PbFieldType.PM, subBuilder: ResourceLogs.create)
    ..hasRequiredFields = false
  ;

  LogsData._() : super();
  factory LogsData({
    $core.Iterable<ResourceLogs>? resourceLogs,
  }) {
    final _result = create();
    if (resourceLogs != null) {
      _result.resourceLogs.addAll(resourceLogs);
    }
    return _result;
  }
  factory LogsData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogsData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogsData clone() => LogsData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogsData copyWith(void Function(LogsData) updates) => super.copyWith((message) => updates(message as LogsData)) as LogsData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogsData create() => LogsData._();
  LogsData createEmptyInstance() => create();
  static $pb.PbList<LogsData> createRepeated() => $pb.PbList<LogsData>();
  @$core.pragma('dart2js:noInline')
  static LogsData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogsData>(create);
  static LogsData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ResourceLogs> get resourceLogs => $_getList(0);
}

class ResourceLogs extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResourceLogs', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.logs.v1'), createEmptyInstance: create)
    ..aOM<$0.Resource>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resource', subBuilder: $0.Resource.create)
    ..pc<ScopeLogs>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scopeLogs', $pb.PbFieldType.PM, subBuilder: ScopeLogs.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schemaUrl')
    ..hasRequiredFields = false
  ;

  ResourceLogs._() : super();
  factory ResourceLogs({
    $0.Resource? resource,
    $core.Iterable<ScopeLogs>? scopeLogs,
    $core.String? schemaUrl,
  }) {
    final _result = create();
    if (resource != null) {
      _result.resource = resource;
    }
    if (scopeLogs != null) {
      _result.scopeLogs.addAll(scopeLogs);
    }
    if (schemaUrl != null) {
      _result.schemaUrl = schemaUrl;
    }
    return _result;
  }
  factory ResourceLogs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceLogs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceLogs clone() => ResourceLogs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceLogs copyWith(void Function(ResourceLogs) updates) => super.copyWith((message) => updates(message as ResourceLogs)) as ResourceLogs; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResourceLogs create() => ResourceLogs._();
  ResourceLogs createEmptyInstance() => create();
  static $pb.PbList<ResourceLogs> createRepeated() => $pb.PbList<ResourceLogs>();
  @$core.pragma('dart2js:noInline')
  static ResourceLogs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceLogs>(create);
  static ResourceLogs? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Resource get resource => $_getN(0);
  @$pb.TagNumber(1)
  set resource($0.Resource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResource() => $_has(0);
  @$pb.TagNumber(1)
  void clearResource() => clearField(1);
  @$pb.TagNumber(1)
  $0.Resource ensureResource() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<ScopeLogs> get scopeLogs => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get schemaUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set schemaUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSchemaUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearSchemaUrl() => clearField(3);
}

class ScopeLogs extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScopeLogs', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.logs.v1'), createEmptyInstance: create)
    ..aOM<$1.InstrumentationScope>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scope', subBuilder: $1.InstrumentationScope.create)
    ..pc<LogRecord>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'logRecords', $pb.PbFieldType.PM, subBuilder: LogRecord.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schemaUrl')
    ..hasRequiredFields = false
  ;

  ScopeLogs._() : super();
  factory ScopeLogs({
    $1.InstrumentationScope? scope,
    $core.Iterable<LogRecord>? logRecords,
    $core.String? schemaUrl,
  }) {
    final _result = create();
    if (scope != null) {
      _result.scope = scope;
    }
    if (logRecords != null) {
      _result.logRecords.addAll(logRecords);
    }
    if (schemaUrl != null) {
      _result.schemaUrl = schemaUrl;
    }
    return _result;
  }
  factory ScopeLogs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScopeLogs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScopeLogs clone() => ScopeLogs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScopeLogs copyWith(void Function(ScopeLogs) updates) => super.copyWith((message) => updates(message as ScopeLogs)) as ScopeLogs; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScopeLogs create() => ScopeLogs._();
  ScopeLogs createEmptyInstance() => create();
  static $pb.PbList<ScopeLogs> createRepeated() => $pb.PbList<ScopeLogs>();
  @$core.pragma('dart2js:noInline')
  static ScopeLogs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScopeLogs>(create);
  static ScopeLogs? _defaultInstance;

  @$pb.TagNumber(1)
  $1.InstrumentationScope get scope => $_getN(0);
  @$pb.TagNumber(1)
  set scope($1.InstrumentationScope v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasScope() => $_has(0);
  @$pb.TagNumber(1)
  void clearScope() => clearField(1);
  @$pb.TagNumber(1)
  $1.InstrumentationScope ensureScope() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<LogRecord> get logRecords => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get schemaUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set schemaUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSchemaUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearSchemaUrl() => clearField(3);
}

class LogRecord extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LogRecord', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.logs.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeUnixNano', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<SeverityNumber>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'severityNumber', $pb.PbFieldType.OE, defaultOrMaker: SeverityNumber.SEVERITY_NUMBER_UNSPECIFIED, valueOf: SeverityNumber.valueOf, enumValues: SeverityNumber.values)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'severityText')
    ..aOM<$1.AnyValue>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: $1.AnyValue.create)
    ..pc<$1.KeyValue>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attributes', $pb.PbFieldType.PM, subBuilder: $1.KeyValue.create)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'droppedAttributesCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flags', $pb.PbFieldType.OF3)
    ..a<$core.List<$core.int>>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'traceId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spanId', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'observedTimeUnixNano', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  LogRecord._() : super();
  factory LogRecord({
    $fixnum.Int64? timeUnixNano,
    SeverityNumber? severityNumber,
    $core.String? severityText,
    $1.AnyValue? body,
    $core.Iterable<$1.KeyValue>? attributes,
    $core.int? droppedAttributesCount,
    $core.int? flags,
    $core.List<$core.int>? traceId,
    $core.List<$core.int>? spanId,
    $fixnum.Int64? observedTimeUnixNano,
  }) {
    final _result = create();
    if (timeUnixNano != null) {
      _result.timeUnixNano = timeUnixNano;
    }
    if (severityNumber != null) {
      _result.severityNumber = severityNumber;
    }
    if (severityText != null) {
      _result.severityText = severityText;
    }
    if (body != null) {
      _result.body = body;
    }
    if (attributes != null) {
      _result.attributes.addAll(attributes);
    }
    if (droppedAttributesCount != null) {
      _result.droppedAttributesCount = droppedAttributesCount;
    }
    if (flags != null) {
      _result.flags = flags;
    }
    if (traceId != null) {
      _result.traceId = traceId;
    }
    if (spanId != null) {
      _result.spanId = spanId;
    }
    if (observedTimeUnixNano != null) {
      _result.observedTimeUnixNano = observedTimeUnixNano;
    }
    return _result;
  }
  factory LogRecord.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogRecord.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogRecord clone() => LogRecord()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogRecord copyWith(void Function(LogRecord) updates) => super.copyWith((message) => updates(message as LogRecord)) as LogRecord; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogRecord create() => LogRecord._();
  LogRecord createEmptyInstance() => create();
  static $pb.PbList<LogRecord> createRepeated() => $pb.PbList<LogRecord>();
  @$core.pragma('dart2js:noInline')
  static LogRecord getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogRecord>(create);
  static LogRecord? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timeUnixNano => $_getI64(0);
  @$pb.TagNumber(1)
  set timeUnixNano($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimeUnixNano() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimeUnixNano() => clearField(1);

  @$pb.TagNumber(2)
  SeverityNumber get severityNumber => $_getN(1);
  @$pb.TagNumber(2)
  set severityNumber(SeverityNumber v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSeverityNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearSeverityNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get severityText => $_getSZ(2);
  @$pb.TagNumber(3)
  set severityText($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSeverityText() => $_has(2);
  @$pb.TagNumber(3)
  void clearSeverityText() => clearField(3);

  @$pb.TagNumber(5)
  $1.AnyValue get body => $_getN(3);
  @$pb.TagNumber(5)
  set body($1.AnyValue v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBody() => $_has(3);
  @$pb.TagNumber(5)
  void clearBody() => clearField(5);
  @$pb.TagNumber(5)
  $1.AnyValue ensureBody() => $_ensure(3);

  @$pb.TagNumber(6)
  $core.List<$1.KeyValue> get attributes => $_getList(4);

  @$pb.TagNumber(7)
  $core.int get droppedAttributesCount => $_getIZ(5);
  @$pb.TagNumber(7)
  set droppedAttributesCount($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasDroppedAttributesCount() => $_has(5);
  @$pb.TagNumber(7)
  void clearDroppedAttributesCount() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get flags => $_getIZ(6);
  @$pb.TagNumber(8)
  set flags($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasFlags() => $_has(6);
  @$pb.TagNumber(8)
  void clearFlags() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get traceId => $_getN(7);
  @$pb.TagNumber(9)
  set traceId($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasTraceId() => $_has(7);
  @$pb.TagNumber(9)
  void clearTraceId() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.int> get spanId => $_getN(8);
  @$pb.TagNumber(10)
  set spanId($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasSpanId() => $_has(8);
  @$pb.TagNumber(10)
  void clearSpanId() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get observedTimeUnixNano => $_getI64(9);
  @$pb.TagNumber(11)
  set observedTimeUnixNano($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasObservedTimeUnixNano() => $_has(9);
  @$pb.TagNumber(11)
  void clearObservedTimeUnixNano() => clearField(11);
}

