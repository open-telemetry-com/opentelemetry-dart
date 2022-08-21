///
//  Generated code. Do not modify.
//  source: opentelemetry/proto/metrics/v1/metrics.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class AggregationTemporality extends $pb.ProtobufEnum {
  static const AggregationTemporality AGGREGATION_TEMPORALITY_UNSPECIFIED = AggregationTemporality._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AGGREGATION_TEMPORALITY_UNSPECIFIED');
  static const AggregationTemporality AGGREGATION_TEMPORALITY_DELTA = AggregationTemporality._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AGGREGATION_TEMPORALITY_DELTA');
  static const AggregationTemporality AGGREGATION_TEMPORALITY_CUMULATIVE = AggregationTemporality._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AGGREGATION_TEMPORALITY_CUMULATIVE');

  static const $core.List<AggregationTemporality> values = <AggregationTemporality> [
    AGGREGATION_TEMPORALITY_UNSPECIFIED,
    AGGREGATION_TEMPORALITY_DELTA,
    AGGREGATION_TEMPORALITY_CUMULATIVE,
  ];

  static final $core.Map<$core.int, AggregationTemporality> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AggregationTemporality? valueOf($core.int value) => _byValue[value];

  const AggregationTemporality._($core.int v, $core.String n) : super(v, n);
}

class DataPointFlags extends $pb.ProtobufEnum {
  static const DataPointFlags FLAG_NONE = DataPointFlags._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FLAG_NONE');
  static const DataPointFlags FLAG_NO_RECORDED_VALUE = DataPointFlags._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FLAG_NO_RECORDED_VALUE');

  static const $core.List<DataPointFlags> values = <DataPointFlags> [
    FLAG_NONE,
    FLAG_NO_RECORDED_VALUE,
  ];

  static final $core.Map<$core.int, DataPointFlags> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DataPointFlags? valueOf($core.int value) => _byValue[value];

  const DataPointFlags._($core.int v, $core.String n) : super(v, n);
}

