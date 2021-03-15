///
//  Generated code. Do not modify.
//  source: environmental_measurement.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class EnvironmentalMeasurement extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EnvironmentalMeasurement', createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'temperature', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'relativeHumidity', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'barometricPressure', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  EnvironmentalMeasurement._() : super();
  factory EnvironmentalMeasurement({
    $core.double temperature,
    $core.double relativeHumidity,
    $core.double barometricPressure,
  }) {
    final _result = create();
    if (temperature != null) {
      _result.temperature = temperature;
    }
    if (relativeHumidity != null) {
      _result.relativeHumidity = relativeHumidity;
    }
    if (barometricPressure != null) {
      _result.barometricPressure = barometricPressure;
    }
    return _result;
  }
  factory EnvironmentalMeasurement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EnvironmentalMeasurement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EnvironmentalMeasurement clone() => EnvironmentalMeasurement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EnvironmentalMeasurement copyWith(void Function(EnvironmentalMeasurement) updates) => super.copyWith((message) => updates(message as EnvironmentalMeasurement)) as EnvironmentalMeasurement; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EnvironmentalMeasurement create() => EnvironmentalMeasurement._();
  EnvironmentalMeasurement createEmptyInstance() => create();
  static $pb.PbList<EnvironmentalMeasurement> createRepeated() => $pb.PbList<EnvironmentalMeasurement>();
  @$core.pragma('dart2js:noInline')
  static EnvironmentalMeasurement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnvironmentalMeasurement>(create);
  static EnvironmentalMeasurement _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get temperature => $_getN(0);
  @$pb.TagNumber(1)
  set temperature($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTemperature() => $_has(0);
  @$pb.TagNumber(1)
  void clearTemperature() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get relativeHumidity => $_getN(1);
  @$pb.TagNumber(2)
  set relativeHumidity($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRelativeHumidity() => $_has(1);
  @$pb.TagNumber(2)
  void clearRelativeHumidity() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get barometricPressure => $_getN(2);
  @$pb.TagNumber(3)
  set barometricPressure($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBarometricPressure() => $_has(2);
  @$pb.TagNumber(3)
  void clearBarometricPressure() => clearField(3);
}

