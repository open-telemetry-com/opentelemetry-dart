///
//  Generated code. Do not modify.
//  source: opentelemetry/proto/metrics/v1/metrics.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../resource/v1/resource.pb.dart' as $0;
import '../../common/v1/common.pb.dart' as $1;

import 'metrics.pbenum.dart';

export 'metrics.pbenum.dart';

class MetricsData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MetricsData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.metrics.v1'), createEmptyInstance: create)
    ..pc<ResourceMetrics>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resourceMetrics', $pb.PbFieldType.PM, subBuilder: ResourceMetrics.create)
    ..hasRequiredFields = false
  ;

  MetricsData._() : super();
  factory MetricsData({
    $core.Iterable<ResourceMetrics>? resourceMetrics,
  }) {
    final _result = create();
    if (resourceMetrics != null) {
      _result.resourceMetrics.addAll(resourceMetrics);
    }
    return _result;
  }
  factory MetricsData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MetricsData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MetricsData clone() => MetricsData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MetricsData copyWith(void Function(MetricsData) updates) => super.copyWith((message) => updates(message as MetricsData)) as MetricsData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MetricsData create() => MetricsData._();
  MetricsData createEmptyInstance() => create();
  static $pb.PbList<MetricsData> createRepeated() => $pb.PbList<MetricsData>();
  @$core.pragma('dart2js:noInline')
  static MetricsData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MetricsData>(create);
  static MetricsData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ResourceMetrics> get resourceMetrics => $_getList(0);
}

class ResourceMetrics extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResourceMetrics', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.metrics.v1'), createEmptyInstance: create)
    ..aOM<$0.Resource>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resource', subBuilder: $0.Resource.create)
    ..pc<ScopeMetrics>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scopeMetrics', $pb.PbFieldType.PM, subBuilder: ScopeMetrics.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schemaUrl')
    ..hasRequiredFields = false
  ;

  ResourceMetrics._() : super();
  factory ResourceMetrics({
    $0.Resource? resource,
    $core.Iterable<ScopeMetrics>? scopeMetrics,
    $core.String? schemaUrl,
  }) {
    final _result = create();
    if (resource != null) {
      _result.resource = resource;
    }
    if (scopeMetrics != null) {
      _result.scopeMetrics.addAll(scopeMetrics);
    }
    if (schemaUrl != null) {
      _result.schemaUrl = schemaUrl;
    }
    return _result;
  }
  factory ResourceMetrics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceMetrics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceMetrics clone() => ResourceMetrics()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceMetrics copyWith(void Function(ResourceMetrics) updates) => super.copyWith((message) => updates(message as ResourceMetrics)) as ResourceMetrics; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResourceMetrics create() => ResourceMetrics._();
  ResourceMetrics createEmptyInstance() => create();
  static $pb.PbList<ResourceMetrics> createRepeated() => $pb.PbList<ResourceMetrics>();
  @$core.pragma('dart2js:noInline')
  static ResourceMetrics getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceMetrics>(create);
  static ResourceMetrics? _defaultInstance;

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
  $core.List<ScopeMetrics> get scopeMetrics => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get schemaUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set schemaUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSchemaUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearSchemaUrl() => clearField(3);
}

class ScopeMetrics extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScopeMetrics', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.metrics.v1'), createEmptyInstance: create)
    ..aOM<$1.InstrumentationScope>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scope', subBuilder: $1.InstrumentationScope.create)
    ..pc<Metric>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metrics', $pb.PbFieldType.PM, subBuilder: Metric.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schemaUrl')
    ..hasRequiredFields = false
  ;

  ScopeMetrics._() : super();
  factory ScopeMetrics({
    $1.InstrumentationScope? scope,
    $core.Iterable<Metric>? metrics,
    $core.String? schemaUrl,
  }) {
    final _result = create();
    if (scope != null) {
      _result.scope = scope;
    }
    if (metrics != null) {
      _result.metrics.addAll(metrics);
    }
    if (schemaUrl != null) {
      _result.schemaUrl = schemaUrl;
    }
    return _result;
  }
  factory ScopeMetrics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScopeMetrics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScopeMetrics clone() => ScopeMetrics()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScopeMetrics copyWith(void Function(ScopeMetrics) updates) => super.copyWith((message) => updates(message as ScopeMetrics)) as ScopeMetrics; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScopeMetrics create() => ScopeMetrics._();
  ScopeMetrics createEmptyInstance() => create();
  static $pb.PbList<ScopeMetrics> createRepeated() => $pb.PbList<ScopeMetrics>();
  @$core.pragma('dart2js:noInline')
  static ScopeMetrics getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScopeMetrics>(create);
  static ScopeMetrics? _defaultInstance;

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
  $core.List<Metric> get metrics => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get schemaUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set schemaUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSchemaUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearSchemaUrl() => clearField(3);
}

enum Metric_Data {
  gauge, 
  sum, 
  histogram, 
  exponentialHistogram, 
  summary, 
  notSet
}

class Metric extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Metric_Data> _Metric_DataByTag = {
    5 : Metric_Data.gauge,
    7 : Metric_Data.sum,
    9 : Metric_Data.histogram,
    10 : Metric_Data.exponentialHistogram,
    11 : Metric_Data.summary,
    0 : Metric_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Metric', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.metrics.v1'), createEmptyInstance: create)
    ..oo(0, [5, 7, 9, 10, 11])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unit')
    ..aOM<Gauge>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gauge', subBuilder: Gauge.create)
    ..aOM<Sum>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sum', subBuilder: Sum.create)
    ..aOM<Histogram>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'histogram', subBuilder: Histogram.create)
    ..aOM<ExponentialHistogram>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'exponentialHistogram', subBuilder: ExponentialHistogram.create)
    ..aOM<Summary>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'summary', subBuilder: Summary.create)
    ..hasRequiredFields = false
  ;

  Metric._() : super();
  factory Metric({
    $core.String? name,
    $core.String? description,
    $core.String? unit,
    Gauge? gauge,
    Sum? sum,
    Histogram? histogram,
    ExponentialHistogram? exponentialHistogram,
    Summary? summary,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (unit != null) {
      _result.unit = unit;
    }
    if (gauge != null) {
      _result.gauge = gauge;
    }
    if (sum != null) {
      _result.sum = sum;
    }
    if (histogram != null) {
      _result.histogram = histogram;
    }
    if (exponentialHistogram != null) {
      _result.exponentialHistogram = exponentialHistogram;
    }
    if (summary != null) {
      _result.summary = summary;
    }
    return _result;
  }
  factory Metric.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Metric.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Metric clone() => Metric()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Metric copyWith(void Function(Metric) updates) => super.copyWith((message) => updates(message as Metric)) as Metric; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Metric create() => Metric._();
  Metric createEmptyInstance() => create();
  static $pb.PbList<Metric> createRepeated() => $pb.PbList<Metric>();
  @$core.pragma('dart2js:noInline')
  static Metric getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Metric>(create);
  static Metric? _defaultInstance;

  Metric_Data whichData() => _Metric_DataByTag[$_whichOneof(0)]!;
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get unit => $_getSZ(2);
  @$pb.TagNumber(3)
  set unit($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUnit() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnit() => clearField(3);

  @$pb.TagNumber(5)
  Gauge get gauge => $_getN(3);
  @$pb.TagNumber(5)
  set gauge(Gauge v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGauge() => $_has(3);
  @$pb.TagNumber(5)
  void clearGauge() => clearField(5);
  @$pb.TagNumber(5)
  Gauge ensureGauge() => $_ensure(3);

  @$pb.TagNumber(7)
  Sum get sum => $_getN(4);
  @$pb.TagNumber(7)
  set sum(Sum v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSum() => $_has(4);
  @$pb.TagNumber(7)
  void clearSum() => clearField(7);
  @$pb.TagNumber(7)
  Sum ensureSum() => $_ensure(4);

  @$pb.TagNumber(9)
  Histogram get histogram => $_getN(5);
  @$pb.TagNumber(9)
  set histogram(Histogram v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasHistogram() => $_has(5);
  @$pb.TagNumber(9)
  void clearHistogram() => clearField(9);
  @$pb.TagNumber(9)
  Histogram ensureHistogram() => $_ensure(5);

  @$pb.TagNumber(10)
  ExponentialHistogram get exponentialHistogram => $_getN(6);
  @$pb.TagNumber(10)
  set exponentialHistogram(ExponentialHistogram v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasExponentialHistogram() => $_has(6);
  @$pb.TagNumber(10)
  void clearExponentialHistogram() => clearField(10);
  @$pb.TagNumber(10)
  ExponentialHistogram ensureExponentialHistogram() => $_ensure(6);

  @$pb.TagNumber(11)
  Summary get summary => $_getN(7);
  @$pb.TagNumber(11)
  set summary(Summary v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasSummary() => $_has(7);
  @$pb.TagNumber(11)
  void clearSummary() => clearField(11);
  @$pb.TagNumber(11)
  Summary ensureSummary() => $_ensure(7);
}

class Gauge extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Gauge', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.metrics.v1'), createEmptyInstance: create)
    ..pc<NumberDataPoint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataPoints', $pb.PbFieldType.PM, subBuilder: NumberDataPoint.create)
    ..hasRequiredFields = false
  ;

  Gauge._() : super();
  factory Gauge({
    $core.Iterable<NumberDataPoint>? dataPoints,
  }) {
    final _result = create();
    if (dataPoints != null) {
      _result.dataPoints.addAll(dataPoints);
    }
    return _result;
  }
  factory Gauge.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Gauge.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Gauge clone() => Gauge()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Gauge copyWith(void Function(Gauge) updates) => super.copyWith((message) => updates(message as Gauge)) as Gauge; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Gauge create() => Gauge._();
  Gauge createEmptyInstance() => create();
  static $pb.PbList<Gauge> createRepeated() => $pb.PbList<Gauge>();
  @$core.pragma('dart2js:noInline')
  static Gauge getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Gauge>(create);
  static Gauge? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NumberDataPoint> get dataPoints => $_getList(0);
}

class Sum extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Sum', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.metrics.v1'), createEmptyInstance: create)
    ..pc<NumberDataPoint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataPoints', $pb.PbFieldType.PM, subBuilder: NumberDataPoint.create)
    ..e<AggregationTemporality>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'aggregationTemporality', $pb.PbFieldType.OE, defaultOrMaker: AggregationTemporality.AGGREGATION_TEMPORALITY_UNSPECIFIED, valueOf: AggregationTemporality.valueOf, enumValues: AggregationTemporality.values)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isMonotonic')
    ..hasRequiredFields = false
  ;

  Sum._() : super();
  factory Sum({
    $core.Iterable<NumberDataPoint>? dataPoints,
    AggregationTemporality? aggregationTemporality,
    $core.bool? isMonotonic,
  }) {
    final _result = create();
    if (dataPoints != null) {
      _result.dataPoints.addAll(dataPoints);
    }
    if (aggregationTemporality != null) {
      _result.aggregationTemporality = aggregationTemporality;
    }
    if (isMonotonic != null) {
      _result.isMonotonic = isMonotonic;
    }
    return _result;
  }
  factory Sum.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Sum.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Sum clone() => Sum()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Sum copyWith(void Function(Sum) updates) => super.copyWith((message) => updates(message as Sum)) as Sum; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Sum create() => Sum._();
  Sum createEmptyInstance() => create();
  static $pb.PbList<Sum> createRepeated() => $pb.PbList<Sum>();
  @$core.pragma('dart2js:noInline')
  static Sum getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Sum>(create);
  static Sum? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NumberDataPoint> get dataPoints => $_getList(0);

  @$pb.TagNumber(2)
  AggregationTemporality get aggregationTemporality => $_getN(1);
  @$pb.TagNumber(2)
  set aggregationTemporality(AggregationTemporality v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAggregationTemporality() => $_has(1);
  @$pb.TagNumber(2)
  void clearAggregationTemporality() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isMonotonic => $_getBF(2);
  @$pb.TagNumber(3)
  set isMonotonic($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsMonotonic() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsMonotonic() => clearField(3);
}

class Histogram extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Histogram', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.metrics.v1'), createEmptyInstance: create)
    ..pc<HistogramDataPoint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataPoints', $pb.PbFieldType.PM, subBuilder: HistogramDataPoint.create)
    ..e<AggregationTemporality>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'aggregationTemporality', $pb.PbFieldType.OE, defaultOrMaker: AggregationTemporality.AGGREGATION_TEMPORALITY_UNSPECIFIED, valueOf: AggregationTemporality.valueOf, enumValues: AggregationTemporality.values)
    ..hasRequiredFields = false
  ;

  Histogram._() : super();
  factory Histogram({
    $core.Iterable<HistogramDataPoint>? dataPoints,
    AggregationTemporality? aggregationTemporality,
  }) {
    final _result = create();
    if (dataPoints != null) {
      _result.dataPoints.addAll(dataPoints);
    }
    if (aggregationTemporality != null) {
      _result.aggregationTemporality = aggregationTemporality;
    }
    return _result;
  }
  factory Histogram.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Histogram.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Histogram clone() => Histogram()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Histogram copyWith(void Function(Histogram) updates) => super.copyWith((message) => updates(message as Histogram)) as Histogram; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Histogram create() => Histogram._();
  Histogram createEmptyInstance() => create();
  static $pb.PbList<Histogram> createRepeated() => $pb.PbList<Histogram>();
  @$core.pragma('dart2js:noInline')
  static Histogram getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Histogram>(create);
  static Histogram? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<HistogramDataPoint> get dataPoints => $_getList(0);

  @$pb.TagNumber(2)
  AggregationTemporality get aggregationTemporality => $_getN(1);
  @$pb.TagNumber(2)
  set aggregationTemporality(AggregationTemporality v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAggregationTemporality() => $_has(1);
  @$pb.TagNumber(2)
  void clearAggregationTemporality() => clearField(2);
}

class ExponentialHistogram extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExponentialHistogram', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.metrics.v1'), createEmptyInstance: create)
    ..pc<ExponentialHistogramDataPoint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataPoints', $pb.PbFieldType.PM, subBuilder: ExponentialHistogramDataPoint.create)
    ..e<AggregationTemporality>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'aggregationTemporality', $pb.PbFieldType.OE, defaultOrMaker: AggregationTemporality.AGGREGATION_TEMPORALITY_UNSPECIFIED, valueOf: AggregationTemporality.valueOf, enumValues: AggregationTemporality.values)
    ..hasRequiredFields = false
  ;

  ExponentialHistogram._() : super();
  factory ExponentialHistogram({
    $core.Iterable<ExponentialHistogramDataPoint>? dataPoints,
    AggregationTemporality? aggregationTemporality,
  }) {
    final _result = create();
    if (dataPoints != null) {
      _result.dataPoints.addAll(dataPoints);
    }
    if (aggregationTemporality != null) {
      _result.aggregationTemporality = aggregationTemporality;
    }
    return _result;
  }
  factory ExponentialHistogram.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExponentialHistogram.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExponentialHistogram clone() => ExponentialHistogram()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExponentialHistogram copyWith(void Function(ExponentialHistogram) updates) => super.copyWith((message) => updates(message as ExponentialHistogram)) as ExponentialHistogram; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExponentialHistogram create() => ExponentialHistogram._();
  ExponentialHistogram createEmptyInstance() => create();
  static $pb.PbList<ExponentialHistogram> createRepeated() => $pb.PbList<ExponentialHistogram>();
  @$core.pragma('dart2js:noInline')
  static ExponentialHistogram getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExponentialHistogram>(create);
  static ExponentialHistogram? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ExponentialHistogramDataPoint> get dataPoints => $_getList(0);

  @$pb.TagNumber(2)
  AggregationTemporality get aggregationTemporality => $_getN(1);
  @$pb.TagNumber(2)
  set aggregationTemporality(AggregationTemporality v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAggregationTemporality() => $_has(1);
  @$pb.TagNumber(2)
  void clearAggregationTemporality() => clearField(2);
}

class Summary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Summary', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.metrics.v1'), createEmptyInstance: create)
    ..pc<SummaryDataPoint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataPoints', $pb.PbFieldType.PM, subBuilder: SummaryDataPoint.create)
    ..hasRequiredFields = false
  ;

  Summary._() : super();
  factory Summary({
    $core.Iterable<SummaryDataPoint>? dataPoints,
  }) {
    final _result = create();
    if (dataPoints != null) {
      _result.dataPoints.addAll(dataPoints);
    }
    return _result;
  }
  factory Summary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Summary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Summary clone() => Summary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Summary copyWith(void Function(Summary) updates) => super.copyWith((message) => updates(message as Summary)) as Summary; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Summary create() => Summary._();
  Summary createEmptyInstance() => create();
  static $pb.PbList<Summary> createRepeated() => $pb.PbList<Summary>();
  @$core.pragma('dart2js:noInline')
  static Summary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Summary>(create);
  static Summary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SummaryDataPoint> get dataPoints => $_getList(0);
}

enum NumberDataPoint_Value {
  asDouble, 
  asInt, 
  notSet
}

class NumberDataPoint extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, NumberDataPoint_Value> _NumberDataPoint_ValueByTag = {
    4 : NumberDataPoint_Value.asDouble,
    6 : NumberDataPoint_Value.asInt,
    0 : NumberDataPoint_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NumberDataPoint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.metrics.v1'), createEmptyInstance: create)
    ..oo(0, [4, 6])
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startTimeUnixNano', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeUnixNano', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'asDouble', $pb.PbFieldType.OD)
    ..pc<Exemplar>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'exemplars', $pb.PbFieldType.PM, subBuilder: Exemplar.create)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'asInt', $pb.PbFieldType.OSF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<$1.KeyValue>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attributes', $pb.PbFieldType.PM, subBuilder: $1.KeyValue.create)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flags', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  NumberDataPoint._() : super();
  factory NumberDataPoint({
    $fixnum.Int64? startTimeUnixNano,
    $fixnum.Int64? timeUnixNano,
    $core.double? asDouble,
    $core.Iterable<Exemplar>? exemplars,
    $fixnum.Int64? asInt,
    $core.Iterable<$1.KeyValue>? attributes,
    $core.int? flags,
  }) {
    final _result = create();
    if (startTimeUnixNano != null) {
      _result.startTimeUnixNano = startTimeUnixNano;
    }
    if (timeUnixNano != null) {
      _result.timeUnixNano = timeUnixNano;
    }
    if (asDouble != null) {
      _result.asDouble = asDouble;
    }
    if (exemplars != null) {
      _result.exemplars.addAll(exemplars);
    }
    if (asInt != null) {
      _result.asInt = asInt;
    }
    if (attributes != null) {
      _result.attributes.addAll(attributes);
    }
    if (flags != null) {
      _result.flags = flags;
    }
    return _result;
  }
  factory NumberDataPoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NumberDataPoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NumberDataPoint clone() => NumberDataPoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NumberDataPoint copyWith(void Function(NumberDataPoint) updates) => super.copyWith((message) => updates(message as NumberDataPoint)) as NumberDataPoint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NumberDataPoint create() => NumberDataPoint._();
  NumberDataPoint createEmptyInstance() => create();
  static $pb.PbList<NumberDataPoint> createRepeated() => $pb.PbList<NumberDataPoint>();
  @$core.pragma('dart2js:noInline')
  static NumberDataPoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NumberDataPoint>(create);
  static NumberDataPoint? _defaultInstance;

  NumberDataPoint_Value whichValue() => _NumberDataPoint_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  $fixnum.Int64 get startTimeUnixNano => $_getI64(0);
  @$pb.TagNumber(2)
  set startTimeUnixNano($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartTimeUnixNano() => $_has(0);
  @$pb.TagNumber(2)
  void clearStartTimeUnixNano() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get timeUnixNano => $_getI64(1);
  @$pb.TagNumber(3)
  set timeUnixNano($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimeUnixNano() => $_has(1);
  @$pb.TagNumber(3)
  void clearTimeUnixNano() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get asDouble => $_getN(2);
  @$pb.TagNumber(4)
  set asDouble($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasAsDouble() => $_has(2);
  @$pb.TagNumber(4)
  void clearAsDouble() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<Exemplar> get exemplars => $_getList(3);

  @$pb.TagNumber(6)
  $fixnum.Int64 get asInt => $_getI64(4);
  @$pb.TagNumber(6)
  set asInt($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasAsInt() => $_has(4);
  @$pb.TagNumber(6)
  void clearAsInt() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$1.KeyValue> get attributes => $_getList(5);

  @$pb.TagNumber(8)
  $core.int get flags => $_getIZ(6);
  @$pb.TagNumber(8)
  set flags($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasFlags() => $_has(6);
  @$pb.TagNumber(8)
  void clearFlags() => clearField(8);
}

class HistogramDataPoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HistogramDataPoint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.metrics.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startTimeUnixNano', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeUnixNano', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sum', $pb.PbFieldType.OD)
    ..p<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bucketCounts', $pb.PbFieldType.KF6)
    ..p<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'explicitBounds', $pb.PbFieldType.KD)
    ..pc<Exemplar>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'exemplars', $pb.PbFieldType.PM, subBuilder: Exemplar.create)
    ..pc<$1.KeyValue>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attributes', $pb.PbFieldType.PM, subBuilder: $1.KeyValue.create)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flags', $pb.PbFieldType.OU3)
    ..a<$core.double>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'min', $pb.PbFieldType.OD)
    ..a<$core.double>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'max', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  HistogramDataPoint._() : super();
  factory HistogramDataPoint({
    $fixnum.Int64? startTimeUnixNano,
    $fixnum.Int64? timeUnixNano,
    $fixnum.Int64? count,
    $core.double? sum,
    $core.Iterable<$fixnum.Int64>? bucketCounts,
    $core.Iterable<$core.double>? explicitBounds,
    $core.Iterable<Exemplar>? exemplars,
    $core.Iterable<$1.KeyValue>? attributes,
    $core.int? flags,
    $core.double? min,
    $core.double? max,
  }) {
    final _result = create();
    if (startTimeUnixNano != null) {
      _result.startTimeUnixNano = startTimeUnixNano;
    }
    if (timeUnixNano != null) {
      _result.timeUnixNano = timeUnixNano;
    }
    if (count != null) {
      _result.count = count;
    }
    if (sum != null) {
      _result.sum = sum;
    }
    if (bucketCounts != null) {
      _result.bucketCounts.addAll(bucketCounts);
    }
    if (explicitBounds != null) {
      _result.explicitBounds.addAll(explicitBounds);
    }
    if (exemplars != null) {
      _result.exemplars.addAll(exemplars);
    }
    if (attributes != null) {
      _result.attributes.addAll(attributes);
    }
    if (flags != null) {
      _result.flags = flags;
    }
    if (min != null) {
      _result.min = min;
    }
    if (max != null) {
      _result.max = max;
    }
    return _result;
  }
  factory HistogramDataPoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistogramDataPoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HistogramDataPoint clone() => HistogramDataPoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HistogramDataPoint copyWith(void Function(HistogramDataPoint) updates) => super.copyWith((message) => updates(message as HistogramDataPoint)) as HistogramDataPoint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HistogramDataPoint create() => HistogramDataPoint._();
  HistogramDataPoint createEmptyInstance() => create();
  static $pb.PbList<HistogramDataPoint> createRepeated() => $pb.PbList<HistogramDataPoint>();
  @$core.pragma('dart2js:noInline')
  static HistogramDataPoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistogramDataPoint>(create);
  static HistogramDataPoint? _defaultInstance;

  @$pb.TagNumber(2)
  $fixnum.Int64 get startTimeUnixNano => $_getI64(0);
  @$pb.TagNumber(2)
  set startTimeUnixNano($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartTimeUnixNano() => $_has(0);
  @$pb.TagNumber(2)
  void clearStartTimeUnixNano() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get timeUnixNano => $_getI64(1);
  @$pb.TagNumber(3)
  set timeUnixNano($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimeUnixNano() => $_has(1);
  @$pb.TagNumber(3)
  void clearTimeUnixNano() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get count => $_getI64(2);
  @$pb.TagNumber(4)
  set count($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(4)
  void clearCount() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get sum => $_getN(3);
  @$pb.TagNumber(5)
  set sum($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasSum() => $_has(3);
  @$pb.TagNumber(5)
  void clearSum() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$fixnum.Int64> get bucketCounts => $_getList(4);

  @$pb.TagNumber(7)
  $core.List<$core.double> get explicitBounds => $_getList(5);

  @$pb.TagNumber(8)
  $core.List<Exemplar> get exemplars => $_getList(6);

  @$pb.TagNumber(9)
  $core.List<$1.KeyValue> get attributes => $_getList(7);

  @$pb.TagNumber(10)
  $core.int get flags => $_getIZ(8);
  @$pb.TagNumber(10)
  set flags($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasFlags() => $_has(8);
  @$pb.TagNumber(10)
  void clearFlags() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get min => $_getN(9);
  @$pb.TagNumber(11)
  set min($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasMin() => $_has(9);
  @$pb.TagNumber(11)
  void clearMin() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get max => $_getN(10);
  @$pb.TagNumber(12)
  set max($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasMax() => $_has(10);
  @$pb.TagNumber(12)
  void clearMax() => clearField(12);
}

class ExponentialHistogramDataPoint_Buckets extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExponentialHistogramDataPoint.Buckets', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.metrics.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.OS3)
    ..p<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bucketCounts', $pb.PbFieldType.KU6)
    ..hasRequiredFields = false
  ;

  ExponentialHistogramDataPoint_Buckets._() : super();
  factory ExponentialHistogramDataPoint_Buckets({
    $core.int? offset,
    $core.Iterable<$fixnum.Int64>? bucketCounts,
  }) {
    final _result = create();
    if (offset != null) {
      _result.offset = offset;
    }
    if (bucketCounts != null) {
      _result.bucketCounts.addAll(bucketCounts);
    }
    return _result;
  }
  factory ExponentialHistogramDataPoint_Buckets.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExponentialHistogramDataPoint_Buckets.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExponentialHistogramDataPoint_Buckets clone() => ExponentialHistogramDataPoint_Buckets()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExponentialHistogramDataPoint_Buckets copyWith(void Function(ExponentialHistogramDataPoint_Buckets) updates) => super.copyWith((message) => updates(message as ExponentialHistogramDataPoint_Buckets)) as ExponentialHistogramDataPoint_Buckets; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExponentialHistogramDataPoint_Buckets create() => ExponentialHistogramDataPoint_Buckets._();
  ExponentialHistogramDataPoint_Buckets createEmptyInstance() => create();
  static $pb.PbList<ExponentialHistogramDataPoint_Buckets> createRepeated() => $pb.PbList<ExponentialHistogramDataPoint_Buckets>();
  @$core.pragma('dart2js:noInline')
  static ExponentialHistogramDataPoint_Buckets getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExponentialHistogramDataPoint_Buckets>(create);
  static ExponentialHistogramDataPoint_Buckets? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get offset => $_getIZ(0);
  @$pb.TagNumber(1)
  set offset($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get bucketCounts => $_getList(1);
}

class ExponentialHistogramDataPoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExponentialHistogramDataPoint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.metrics.v1'), createEmptyInstance: create)
    ..pc<$1.KeyValue>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attributes', $pb.PbFieldType.PM, subBuilder: $1.KeyValue.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startTimeUnixNano', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeUnixNano', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sum', $pb.PbFieldType.OD)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scale', $pb.PbFieldType.OS3)
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'zeroCount', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<ExponentialHistogramDataPoint_Buckets>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'positive', subBuilder: ExponentialHistogramDataPoint_Buckets.create)
    ..aOM<ExponentialHistogramDataPoint_Buckets>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'negative', subBuilder: ExponentialHistogramDataPoint_Buckets.create)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flags', $pb.PbFieldType.OU3)
    ..pc<Exemplar>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'exemplars', $pb.PbFieldType.PM, subBuilder: Exemplar.create)
    ..a<$core.double>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'min', $pb.PbFieldType.OD)
    ..a<$core.double>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'max', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  ExponentialHistogramDataPoint._() : super();
  factory ExponentialHistogramDataPoint({
    $core.Iterable<$1.KeyValue>? attributes,
    $fixnum.Int64? startTimeUnixNano,
    $fixnum.Int64? timeUnixNano,
    $fixnum.Int64? count,
    $core.double? sum,
    $core.int? scale,
    $fixnum.Int64? zeroCount,
    ExponentialHistogramDataPoint_Buckets? positive,
    ExponentialHistogramDataPoint_Buckets? negative,
    $core.int? flags,
    $core.Iterable<Exemplar>? exemplars,
    $core.double? min,
    $core.double? max,
  }) {
    final _result = create();
    if (attributes != null) {
      _result.attributes.addAll(attributes);
    }
    if (startTimeUnixNano != null) {
      _result.startTimeUnixNano = startTimeUnixNano;
    }
    if (timeUnixNano != null) {
      _result.timeUnixNano = timeUnixNano;
    }
    if (count != null) {
      _result.count = count;
    }
    if (sum != null) {
      _result.sum = sum;
    }
    if (scale != null) {
      _result.scale = scale;
    }
    if (zeroCount != null) {
      _result.zeroCount = zeroCount;
    }
    if (positive != null) {
      _result.positive = positive;
    }
    if (negative != null) {
      _result.negative = negative;
    }
    if (flags != null) {
      _result.flags = flags;
    }
    if (exemplars != null) {
      _result.exemplars.addAll(exemplars);
    }
    if (min != null) {
      _result.min = min;
    }
    if (max != null) {
      _result.max = max;
    }
    return _result;
  }
  factory ExponentialHistogramDataPoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExponentialHistogramDataPoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExponentialHistogramDataPoint clone() => ExponentialHistogramDataPoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExponentialHistogramDataPoint copyWith(void Function(ExponentialHistogramDataPoint) updates) => super.copyWith((message) => updates(message as ExponentialHistogramDataPoint)) as ExponentialHistogramDataPoint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExponentialHistogramDataPoint create() => ExponentialHistogramDataPoint._();
  ExponentialHistogramDataPoint createEmptyInstance() => create();
  static $pb.PbList<ExponentialHistogramDataPoint> createRepeated() => $pb.PbList<ExponentialHistogramDataPoint>();
  @$core.pragma('dart2js:noInline')
  static ExponentialHistogramDataPoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExponentialHistogramDataPoint>(create);
  static ExponentialHistogramDataPoint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.KeyValue> get attributes => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get startTimeUnixNano => $_getI64(1);
  @$pb.TagNumber(2)
  set startTimeUnixNano($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartTimeUnixNano() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartTimeUnixNano() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get timeUnixNano => $_getI64(2);
  @$pb.TagNumber(3)
  set timeUnixNano($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimeUnixNano() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimeUnixNano() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get count => $_getI64(3);
  @$pb.TagNumber(4)
  set count($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearCount() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get sum => $_getN(4);
  @$pb.TagNumber(5)
  set sum($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSum() => $_has(4);
  @$pb.TagNumber(5)
  void clearSum() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get scale => $_getIZ(5);
  @$pb.TagNumber(6)
  set scale($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasScale() => $_has(5);
  @$pb.TagNumber(6)
  void clearScale() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get zeroCount => $_getI64(6);
  @$pb.TagNumber(7)
  set zeroCount($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasZeroCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearZeroCount() => clearField(7);

  @$pb.TagNumber(8)
  ExponentialHistogramDataPoint_Buckets get positive => $_getN(7);
  @$pb.TagNumber(8)
  set positive(ExponentialHistogramDataPoint_Buckets v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasPositive() => $_has(7);
  @$pb.TagNumber(8)
  void clearPositive() => clearField(8);
  @$pb.TagNumber(8)
  ExponentialHistogramDataPoint_Buckets ensurePositive() => $_ensure(7);

  @$pb.TagNumber(9)
  ExponentialHistogramDataPoint_Buckets get negative => $_getN(8);
  @$pb.TagNumber(9)
  set negative(ExponentialHistogramDataPoint_Buckets v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasNegative() => $_has(8);
  @$pb.TagNumber(9)
  void clearNegative() => clearField(9);
  @$pb.TagNumber(9)
  ExponentialHistogramDataPoint_Buckets ensureNegative() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.int get flags => $_getIZ(9);
  @$pb.TagNumber(10)
  set flags($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFlags() => $_has(9);
  @$pb.TagNumber(10)
  void clearFlags() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<Exemplar> get exemplars => $_getList(10);

  @$pb.TagNumber(12)
  $core.double get min => $_getN(11);
  @$pb.TagNumber(12)
  set min($core.double v) { $_setDouble(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasMin() => $_has(11);
  @$pb.TagNumber(12)
  void clearMin() => clearField(12);

  @$pb.TagNumber(13)
  $core.double get max => $_getN(12);
  @$pb.TagNumber(13)
  set max($core.double v) { $_setDouble(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasMax() => $_has(12);
  @$pb.TagNumber(13)
  void clearMax() => clearField(13);
}

class SummaryDataPoint_ValueAtQuantile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SummaryDataPoint.ValueAtQuantile', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.metrics.v1'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quantile', $pb.PbFieldType.OD)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  SummaryDataPoint_ValueAtQuantile._() : super();
  factory SummaryDataPoint_ValueAtQuantile({
    $core.double? quantile,
    $core.double? value,
  }) {
    final _result = create();
    if (quantile != null) {
      _result.quantile = quantile;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory SummaryDataPoint_ValueAtQuantile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SummaryDataPoint_ValueAtQuantile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SummaryDataPoint_ValueAtQuantile clone() => SummaryDataPoint_ValueAtQuantile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SummaryDataPoint_ValueAtQuantile copyWith(void Function(SummaryDataPoint_ValueAtQuantile) updates) => super.copyWith((message) => updates(message as SummaryDataPoint_ValueAtQuantile)) as SummaryDataPoint_ValueAtQuantile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SummaryDataPoint_ValueAtQuantile create() => SummaryDataPoint_ValueAtQuantile._();
  SummaryDataPoint_ValueAtQuantile createEmptyInstance() => create();
  static $pb.PbList<SummaryDataPoint_ValueAtQuantile> createRepeated() => $pb.PbList<SummaryDataPoint_ValueAtQuantile>();
  @$core.pragma('dart2js:noInline')
  static SummaryDataPoint_ValueAtQuantile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SummaryDataPoint_ValueAtQuantile>(create);
  static SummaryDataPoint_ValueAtQuantile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get quantile => $_getN(0);
  @$pb.TagNumber(1)
  set quantile($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuantile() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuantile() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class SummaryDataPoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SummaryDataPoint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.metrics.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startTimeUnixNano', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeUnixNano', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sum', $pb.PbFieldType.OD)
    ..pc<SummaryDataPoint_ValueAtQuantile>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quantileValues', $pb.PbFieldType.PM, subBuilder: SummaryDataPoint_ValueAtQuantile.create)
    ..pc<$1.KeyValue>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attributes', $pb.PbFieldType.PM, subBuilder: $1.KeyValue.create)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flags', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  SummaryDataPoint._() : super();
  factory SummaryDataPoint({
    $fixnum.Int64? startTimeUnixNano,
    $fixnum.Int64? timeUnixNano,
    $fixnum.Int64? count,
    $core.double? sum,
    $core.Iterable<SummaryDataPoint_ValueAtQuantile>? quantileValues,
    $core.Iterable<$1.KeyValue>? attributes,
    $core.int? flags,
  }) {
    final _result = create();
    if (startTimeUnixNano != null) {
      _result.startTimeUnixNano = startTimeUnixNano;
    }
    if (timeUnixNano != null) {
      _result.timeUnixNano = timeUnixNano;
    }
    if (count != null) {
      _result.count = count;
    }
    if (sum != null) {
      _result.sum = sum;
    }
    if (quantileValues != null) {
      _result.quantileValues.addAll(quantileValues);
    }
    if (attributes != null) {
      _result.attributes.addAll(attributes);
    }
    if (flags != null) {
      _result.flags = flags;
    }
    return _result;
  }
  factory SummaryDataPoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SummaryDataPoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SummaryDataPoint clone() => SummaryDataPoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SummaryDataPoint copyWith(void Function(SummaryDataPoint) updates) => super.copyWith((message) => updates(message as SummaryDataPoint)) as SummaryDataPoint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SummaryDataPoint create() => SummaryDataPoint._();
  SummaryDataPoint createEmptyInstance() => create();
  static $pb.PbList<SummaryDataPoint> createRepeated() => $pb.PbList<SummaryDataPoint>();
  @$core.pragma('dart2js:noInline')
  static SummaryDataPoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SummaryDataPoint>(create);
  static SummaryDataPoint? _defaultInstance;

  @$pb.TagNumber(2)
  $fixnum.Int64 get startTimeUnixNano => $_getI64(0);
  @$pb.TagNumber(2)
  set startTimeUnixNano($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartTimeUnixNano() => $_has(0);
  @$pb.TagNumber(2)
  void clearStartTimeUnixNano() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get timeUnixNano => $_getI64(1);
  @$pb.TagNumber(3)
  set timeUnixNano($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimeUnixNano() => $_has(1);
  @$pb.TagNumber(3)
  void clearTimeUnixNano() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get count => $_getI64(2);
  @$pb.TagNumber(4)
  set count($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(4)
  void clearCount() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get sum => $_getN(3);
  @$pb.TagNumber(5)
  set sum($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasSum() => $_has(3);
  @$pb.TagNumber(5)
  void clearSum() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<SummaryDataPoint_ValueAtQuantile> get quantileValues => $_getList(4);

  @$pb.TagNumber(7)
  $core.List<$1.KeyValue> get attributes => $_getList(5);

  @$pb.TagNumber(8)
  $core.int get flags => $_getIZ(6);
  @$pb.TagNumber(8)
  set flags($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasFlags() => $_has(6);
  @$pb.TagNumber(8)
  void clearFlags() => clearField(8);
}

enum Exemplar_Value {
  asDouble, 
  asInt, 
  notSet
}

class Exemplar extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Exemplar_Value> _Exemplar_ValueByTag = {
    3 : Exemplar_Value.asDouble,
    6 : Exemplar_Value.asInt,
    0 : Exemplar_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Exemplar', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'opentelemetry.proto.metrics.v1'), createEmptyInstance: create)
    ..oo(0, [3, 6])
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeUnixNano', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'asDouble', $pb.PbFieldType.OD)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spanId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'traceId', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'asInt', $pb.PbFieldType.OSF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<$1.KeyValue>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filteredAttributes', $pb.PbFieldType.PM, subBuilder: $1.KeyValue.create)
    ..hasRequiredFields = false
  ;

  Exemplar._() : super();
  factory Exemplar({
    $fixnum.Int64? timeUnixNano,
    $core.double? asDouble,
    $core.List<$core.int>? spanId,
    $core.List<$core.int>? traceId,
    $fixnum.Int64? asInt,
    $core.Iterable<$1.KeyValue>? filteredAttributes,
  }) {
    final _result = create();
    if (timeUnixNano != null) {
      _result.timeUnixNano = timeUnixNano;
    }
    if (asDouble != null) {
      _result.asDouble = asDouble;
    }
    if (spanId != null) {
      _result.spanId = spanId;
    }
    if (traceId != null) {
      _result.traceId = traceId;
    }
    if (asInt != null) {
      _result.asInt = asInt;
    }
    if (filteredAttributes != null) {
      _result.filteredAttributes.addAll(filteredAttributes);
    }
    return _result;
  }
  factory Exemplar.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Exemplar.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Exemplar clone() => Exemplar()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Exemplar copyWith(void Function(Exemplar) updates) => super.copyWith((message) => updates(message as Exemplar)) as Exemplar; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Exemplar create() => Exemplar._();
  Exemplar createEmptyInstance() => create();
  static $pb.PbList<Exemplar> createRepeated() => $pb.PbList<Exemplar>();
  @$core.pragma('dart2js:noInline')
  static Exemplar getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Exemplar>(create);
  static Exemplar? _defaultInstance;

  Exemplar_Value whichValue() => _Exemplar_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  $fixnum.Int64 get timeUnixNano => $_getI64(0);
  @$pb.TagNumber(2)
  set timeUnixNano($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimeUnixNano() => $_has(0);
  @$pb.TagNumber(2)
  void clearTimeUnixNano() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get asDouble => $_getN(1);
  @$pb.TagNumber(3)
  set asDouble($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasAsDouble() => $_has(1);
  @$pb.TagNumber(3)
  void clearAsDouble() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get spanId => $_getN(2);
  @$pb.TagNumber(4)
  set spanId($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpanId() => $_has(2);
  @$pb.TagNumber(4)
  void clearSpanId() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get traceId => $_getN(3);
  @$pb.TagNumber(5)
  set traceId($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasTraceId() => $_has(3);
  @$pb.TagNumber(5)
  void clearTraceId() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get asInt => $_getI64(4);
  @$pb.TagNumber(6)
  set asInt($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasAsInt() => $_has(4);
  @$pb.TagNumber(6)
  void clearAsInt() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$1.KeyValue> get filteredAttributes => $_getList(5);
}

