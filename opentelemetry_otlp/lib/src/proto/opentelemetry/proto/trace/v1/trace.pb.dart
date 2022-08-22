///
//  Generated code. Do not modify.
//  source: opentelemetry/proto/trace/v1/trace.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../resource/v1/resource.pb.dart' as $0;
import '../../common/v1/common.pb.dart' as $1;

import 'trace.pbenum.dart';

export 'trace.pbenum.dart';

class TracesData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TracesData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.trace.v1'), createEmptyInstance: create)
    ..pc<ResourceSpans>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resourceSpans', $pb.PbFieldType.PM, subBuilder: ResourceSpans.create)
    ..hasRequiredFields = false
  ;

  TracesData._() : super();
  factory TracesData({
    $core.Iterable<ResourceSpans>? resourceSpans,
  }) {
    final _result = create();
    if (resourceSpans != null) {
      _result.resourceSpans.addAll(resourceSpans);
    }
    return _result;
  }
  factory TracesData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TracesData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TracesData clone() => TracesData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TracesData copyWith(void Function(TracesData) updates) => super.copyWith((message) => updates(message as TracesData)) as TracesData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TracesData create() => TracesData._();
  TracesData createEmptyInstance() => create();
  static $pb.PbList<TracesData> createRepeated() => $pb.PbList<TracesData>();
  @$core.pragma('dart2js:noInline')
  static TracesData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TracesData>(create);
  static TracesData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ResourceSpans> get resourceSpans => $_getList(0);
}

class ResourceSpans extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResourceSpans', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.trace.v1'), createEmptyInstance: create)
    ..aOM<$0.Resource>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resource', subBuilder: $0.Resource.create)
    ..pc<ScopeSpans>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scopeSpans', $pb.PbFieldType.PM, subBuilder: ScopeSpans.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schemaUrl')
    ..hasRequiredFields = false
  ;

  ResourceSpans._() : super();
  factory ResourceSpans({
    $0.Resource? resource,
    $core.Iterable<ScopeSpans>? scopeSpans,
    $core.String? schemaUrl,
  }) {
    final _result = create();
    if (resource != null) {
      _result.resource = resource;
    }
    if (scopeSpans != null) {
      _result.scopeSpans.addAll(scopeSpans);
    }
    if (schemaUrl != null) {
      _result.schemaUrl = schemaUrl;
    }
    return _result;
  }
  factory ResourceSpans.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceSpans.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceSpans clone() => ResourceSpans()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceSpans copyWith(void Function(ResourceSpans) updates) => super.copyWith((message) => updates(message as ResourceSpans)) as ResourceSpans; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResourceSpans create() => ResourceSpans._();
  ResourceSpans createEmptyInstance() => create();
  static $pb.PbList<ResourceSpans> createRepeated() => $pb.PbList<ResourceSpans>();
  @$core.pragma('dart2js:noInline')
  static ResourceSpans getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceSpans>(create);
  static ResourceSpans? _defaultInstance;

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
  $core.List<ScopeSpans> get scopeSpans => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get schemaUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set schemaUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSchemaUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearSchemaUrl() => clearField(3);
}

class ScopeSpans extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScopeSpans', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.trace.v1'), createEmptyInstance: create)
    ..aOM<$1.InstrumentationScope>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scope', subBuilder: $1.InstrumentationScope.create)
    ..pc<Span>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spans', $pb.PbFieldType.PM, subBuilder: Span.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schemaUrl')
    ..hasRequiredFields = false
  ;

  ScopeSpans._() : super();
  factory ScopeSpans({
    $1.InstrumentationScope? scope,
    $core.Iterable<Span>? spans,
    $core.String? schemaUrl,
  }) {
    final _result = create();
    if (scope != null) {
      _result.scope = scope;
    }
    if (spans != null) {
      _result.spans.addAll(spans);
    }
    if (schemaUrl != null) {
      _result.schemaUrl = schemaUrl;
    }
    return _result;
  }
  factory ScopeSpans.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScopeSpans.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScopeSpans clone() => ScopeSpans()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScopeSpans copyWith(void Function(ScopeSpans) updates) => super.copyWith((message) => updates(message as ScopeSpans)) as ScopeSpans; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScopeSpans create() => ScopeSpans._();
  ScopeSpans createEmptyInstance() => create();
  static $pb.PbList<ScopeSpans> createRepeated() => $pb.PbList<ScopeSpans>();
  @$core.pragma('dart2js:noInline')
  static ScopeSpans getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScopeSpans>(create);
  static ScopeSpans? _defaultInstance;

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
  $core.List<Span> get spans => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get schemaUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set schemaUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSchemaUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearSchemaUrl() => clearField(3);
}

class Span_Event extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Span.Event', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.trace.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeUnixNano', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<$1.KeyValue>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attributes', $pb.PbFieldType.PM, subBuilder: $1.KeyValue.create)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'droppedAttributesCount', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  Span_Event._() : super();
  factory Span_Event({
    $fixnum.Int64? timeUnixNano,
    $core.String? name,
    $core.Iterable<$1.KeyValue>? attributes,
    $core.int? droppedAttributesCount,
  }) {
    final _result = create();
    if (timeUnixNano != null) {
      _result.timeUnixNano = timeUnixNano;
    }
    if (name != null) {
      _result.name = name;
    }
    if (attributes != null) {
      _result.attributes.addAll(attributes);
    }
    if (droppedAttributesCount != null) {
      _result.droppedAttributesCount = droppedAttributesCount;
    }
    return _result;
  }
  factory Span_Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Span_Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Span_Event clone() => Span_Event()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Span_Event copyWith(void Function(Span_Event) updates) => super.copyWith((message) => updates(message as Span_Event)) as Span_Event; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Span_Event create() => Span_Event._();
  Span_Event createEmptyInstance() => create();
  static $pb.PbList<Span_Event> createRepeated() => $pb.PbList<Span_Event>();
  @$core.pragma('dart2js:noInline')
  static Span_Event getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Span_Event>(create);
  static Span_Event? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timeUnixNano => $_getI64(0);
  @$pb.TagNumber(1)
  set timeUnixNano($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimeUnixNano() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimeUnixNano() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$1.KeyValue> get attributes => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get droppedAttributesCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set droppedAttributesCount($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDroppedAttributesCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearDroppedAttributesCount() => clearField(4);
}

class Span_Link extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Span.Link', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.trace.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'traceId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spanId', $pb.PbFieldType.OY)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'traceState')
    ..pc<$1.KeyValue>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attributes', $pb.PbFieldType.PM, subBuilder: $1.KeyValue.create)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'droppedAttributesCount', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  Span_Link._() : super();
  factory Span_Link({
    $core.List<$core.int>? traceId,
    $core.List<$core.int>? spanId,
    $core.String? traceState,
    $core.Iterable<$1.KeyValue>? attributes,
    $core.int? droppedAttributesCount,
  }) {
    final _result = create();
    if (traceId != null) {
      _result.traceId = traceId;
    }
    if (spanId != null) {
      _result.spanId = spanId;
    }
    if (traceState != null) {
      _result.traceState = traceState;
    }
    if (attributes != null) {
      _result.attributes.addAll(attributes);
    }
    if (droppedAttributesCount != null) {
      _result.droppedAttributesCount = droppedAttributesCount;
    }
    return _result;
  }
  factory Span_Link.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Span_Link.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Span_Link clone() => Span_Link()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Span_Link copyWith(void Function(Span_Link) updates) => super.copyWith((message) => updates(message as Span_Link)) as Span_Link; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Span_Link create() => Span_Link._();
  Span_Link createEmptyInstance() => create();
  static $pb.PbList<Span_Link> createRepeated() => $pb.PbList<Span_Link>();
  @$core.pragma('dart2js:noInline')
  static Span_Link getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Span_Link>(create);
  static Span_Link? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get traceId => $_getN(0);
  @$pb.TagNumber(1)
  set traceId($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTraceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTraceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get spanId => $_getN(1);
  @$pb.TagNumber(2)
  set spanId($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpanId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpanId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get traceState => $_getSZ(2);
  @$pb.TagNumber(3)
  set traceState($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTraceState() => $_has(2);
  @$pb.TagNumber(3)
  void clearTraceState() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$1.KeyValue> get attributes => $_getList(3);

  @$pb.TagNumber(5)
  $core.int get droppedAttributesCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set droppedAttributesCount($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDroppedAttributesCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearDroppedAttributesCount() => clearField(5);
}

class Span extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Span', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.trace.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'traceId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spanId', $pb.PbFieldType.OY)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'traceState')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parentSpanId', $pb.PbFieldType.OY)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..e<Span_SpanKind>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kind', $pb.PbFieldType.OE, defaultOrMaker: Span_SpanKind.SPAN_KIND_UNSPECIFIED, valueOf: Span_SpanKind.valueOf, enumValues: Span_SpanKind.values)
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startTimeUnixNano', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endTimeUnixNano', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<$1.KeyValue>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attributes', $pb.PbFieldType.PM, subBuilder: $1.KeyValue.create)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'droppedAttributesCount', $pb.PbFieldType.OU3)
    ..pc<Span_Event>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'events', $pb.PbFieldType.PM, subBuilder: Span_Event.create)
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'droppedEventsCount', $pb.PbFieldType.OU3)
    ..pc<Span_Link>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'links', $pb.PbFieldType.PM, subBuilder: Span_Link.create)
    ..a<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'droppedLinksCount', $pb.PbFieldType.OU3)
    ..aOM<Status>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', subBuilder: Status.create)
    ..hasRequiredFields = false
  ;

  Span._() : super();
  factory Span({
    $core.List<$core.int>? traceId,
    $core.List<$core.int>? spanId,
    $core.String? traceState,
    $core.List<$core.int>? parentSpanId,
    $core.String? name,
    Span_SpanKind? kind,
    $fixnum.Int64? startTimeUnixNano,
    $fixnum.Int64? endTimeUnixNano,
    $core.Iterable<$1.KeyValue>? attributes,
    $core.int? droppedAttributesCount,
    $core.Iterable<Span_Event>? events,
    $core.int? droppedEventsCount,
    $core.Iterable<Span_Link>? links,
    $core.int? droppedLinksCount,
    Status? status,
  }) {
    final _result = create();
    if (traceId != null) {
      _result.traceId = traceId;
    }
    if (spanId != null) {
      _result.spanId = spanId;
    }
    if (traceState != null) {
      _result.traceState = traceState;
    }
    if (parentSpanId != null) {
      _result.parentSpanId = parentSpanId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (kind != null) {
      _result.kind = kind;
    }
    if (startTimeUnixNano != null) {
      _result.startTimeUnixNano = startTimeUnixNano;
    }
    if (endTimeUnixNano != null) {
      _result.endTimeUnixNano = endTimeUnixNano;
    }
    if (attributes != null) {
      _result.attributes.addAll(attributes);
    }
    if (droppedAttributesCount != null) {
      _result.droppedAttributesCount = droppedAttributesCount;
    }
    if (events != null) {
      _result.events.addAll(events);
    }
    if (droppedEventsCount != null) {
      _result.droppedEventsCount = droppedEventsCount;
    }
    if (links != null) {
      _result.links.addAll(links);
    }
    if (droppedLinksCount != null) {
      _result.droppedLinksCount = droppedLinksCount;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory Span.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Span.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Span clone() => Span()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Span copyWith(void Function(Span) updates) => super.copyWith((message) => updates(message as Span)) as Span; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Span create() => Span._();
  Span createEmptyInstance() => create();
  static $pb.PbList<Span> createRepeated() => $pb.PbList<Span>();
  @$core.pragma('dart2js:noInline')
  static Span getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Span>(create);
  static Span? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get traceId => $_getN(0);
  @$pb.TagNumber(1)
  set traceId($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTraceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTraceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get spanId => $_getN(1);
  @$pb.TagNumber(2)
  set spanId($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpanId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpanId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get traceState => $_getSZ(2);
  @$pb.TagNumber(3)
  set traceState($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTraceState() => $_has(2);
  @$pb.TagNumber(3)
  void clearTraceState() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get parentSpanId => $_getN(3);
  @$pb.TagNumber(4)
  set parentSpanId($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasParentSpanId() => $_has(3);
  @$pb.TagNumber(4)
  void clearParentSpanId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(5)
  set name($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(5)
  void clearName() => clearField(5);

  @$pb.TagNumber(6)
  Span_SpanKind get kind => $_getN(5);
  @$pb.TagNumber(6)
  set kind(Span_SpanKind v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasKind() => $_has(5);
  @$pb.TagNumber(6)
  void clearKind() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get startTimeUnixNano => $_getI64(6);
  @$pb.TagNumber(7)
  set startTimeUnixNano($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasStartTimeUnixNano() => $_has(6);
  @$pb.TagNumber(7)
  void clearStartTimeUnixNano() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get endTimeUnixNano => $_getI64(7);
  @$pb.TagNumber(8)
  set endTimeUnixNano($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEndTimeUnixNano() => $_has(7);
  @$pb.TagNumber(8)
  void clearEndTimeUnixNano() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$1.KeyValue> get attributes => $_getList(8);

  @$pb.TagNumber(10)
  $core.int get droppedAttributesCount => $_getIZ(9);
  @$pb.TagNumber(10)
  set droppedAttributesCount($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDroppedAttributesCount() => $_has(9);
  @$pb.TagNumber(10)
  void clearDroppedAttributesCount() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<Span_Event> get events => $_getList(10);

  @$pb.TagNumber(12)
  $core.int get droppedEventsCount => $_getIZ(11);
  @$pb.TagNumber(12)
  set droppedEventsCount($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasDroppedEventsCount() => $_has(11);
  @$pb.TagNumber(12)
  void clearDroppedEventsCount() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<Span_Link> get links => $_getList(12);

  @$pb.TagNumber(14)
  $core.int get droppedLinksCount => $_getIZ(13);
  @$pb.TagNumber(14)
  set droppedLinksCount($core.int v) { $_setUnsignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasDroppedLinksCount() => $_has(13);
  @$pb.TagNumber(14)
  void clearDroppedLinksCount() => clearField(14);

  @$pb.TagNumber(15)
  Status get status => $_getN(14);
  @$pb.TagNumber(15)
  set status(Status v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasStatus() => $_has(14);
  @$pb.TagNumber(15)
  void clearStatus() => clearField(15);
  @$pb.TagNumber(15)
  Status ensureStatus() => $_ensure(14);
}

class Status extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Status', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.trace.v1'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..e<Status_StatusCode>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code', $pb.PbFieldType.OE, defaultOrMaker: Status_StatusCode.STATUS_CODE_UNSET, valueOf: Status_StatusCode.valueOf, enumValues: Status_StatusCode.values)
    ..hasRequiredFields = false
  ;

  Status._() : super();
  factory Status({
    $core.String? message,
    Status_StatusCode? code,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    if (code != null) {
      _result.code = code;
    }
    return _result;
  }
  factory Status.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Status.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Status clone() => Status()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Status copyWith(void Function(Status) updates) => super.copyWith((message) => updates(message as Status)) as Status; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Status create() => Status._();
  Status createEmptyInstance() => create();
  static $pb.PbList<Status> createRepeated() => $pb.PbList<Status>();
  @$core.pragma('dart2js:noInline')
  static Status getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Status>(create);
  static Status? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  Status_StatusCode get code => $_getN(1);
  @$pb.TagNumber(3)
  set code(Status_StatusCode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(3)
  void clearCode() => clearField(3);
}

