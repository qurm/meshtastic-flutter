///
//  Generated code. Do not modify.
//  source: radioconfig.proto
//

// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class RegionCode extends $pb.ProtobufEnum {
  static const RegionCode Unset = RegionCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Unset');
  static const RegionCode US = RegionCode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'US');
  static const RegionCode EU433 = RegionCode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EU433');
  static const RegionCode EU865 = RegionCode._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EU865');
  static const RegionCode CN = RegionCode._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CN');
  static const RegionCode JP = RegionCode._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'JP');
  static const RegionCode ANZ = RegionCode._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ANZ');
  static const RegionCode KR = RegionCode._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'KR');
  static const RegionCode TW = RegionCode._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TW');
  static const RegionCode RU = RegionCode._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RU');

  static const $core.List<RegionCode> values = <RegionCode> [
    Unset,
    US,
    EU433,
    EU865,
    CN,
    JP,
    ANZ,
    KR,
    TW,
    RU,
  ];

  static final $core.Map<$core.int, RegionCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RegionCode? valueOf($core.int value) => _byValue[value];

  const RegionCode._($core.int v, $core.String n) : super(v, n);
}

class ChargeCurrent extends $pb.ProtobufEnum {
  static const ChargeCurrent MAUnset = ChargeCurrent._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MAUnset');
  static const ChargeCurrent MA100 = ChargeCurrent._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MA100');
  static const ChargeCurrent MA190 = ChargeCurrent._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MA190');
  static const ChargeCurrent MA280 = ChargeCurrent._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MA280');
  static const ChargeCurrent MA360 = ChargeCurrent._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MA360');
  static const ChargeCurrent MA450 = ChargeCurrent._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MA450');
  static const ChargeCurrent MA550 = ChargeCurrent._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MA550');
  static const ChargeCurrent MA630 = ChargeCurrent._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MA630');
  static const ChargeCurrent MA700 = ChargeCurrent._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MA700');
  static const ChargeCurrent MA780 = ChargeCurrent._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MA780');
  static const ChargeCurrent MA880 = ChargeCurrent._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MA880');
  static const ChargeCurrent MA960 = ChargeCurrent._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MA960');
  static const ChargeCurrent MA1000 = ChargeCurrent._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MA1000');
  static const ChargeCurrent MA1080 = ChargeCurrent._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MA1080');
  static const ChargeCurrent MA1160 = ChargeCurrent._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MA1160');
  static const ChargeCurrent MA1240 = ChargeCurrent._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MA1240');
  static const ChargeCurrent MA1320 = ChargeCurrent._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MA1320');

  static const $core.List<ChargeCurrent> values = <ChargeCurrent> [
    MAUnset,
    MA100,
    MA190,
    MA280,
    MA360,
    MA450,
    MA550,
    MA630,
    MA700,
    MA780,
    MA880,
    MA960,
    MA1000,
    MA1080,
    MA1160,
    MA1240,
    MA1320,
  ];

  static final $core.Map<$core.int, ChargeCurrent> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChargeCurrent? valueOf($core.int value) => _byValue[value];

  const ChargeCurrent._($core.int v, $core.String n) : super(v, n);
}

class GpsOperation extends $pb.ProtobufEnum {
  static const GpsOperation GpsOpUnset = GpsOperation._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GpsOpUnset');
  static const GpsOperation GpsOpStationary = GpsOperation._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GpsOpStationary');
  static const GpsOperation GpsOpMobile = GpsOperation._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GpsOpMobile');
  static const GpsOperation GpsOpTimeOnly = GpsOperation._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GpsOpTimeOnly');
  static const GpsOperation GpsOpDisabled = GpsOperation._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GpsOpDisabled');

  static const $core.List<GpsOperation> values = <GpsOperation> [
    GpsOpUnset,
    GpsOpStationary,
    GpsOpMobile,
    GpsOpTimeOnly,
    GpsOpDisabled,
  ];

  static final $core.Map<$core.int, GpsOperation> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GpsOperation? valueOf($core.int value) => _byValue[value];

  const GpsOperation._($core.int v, $core.String n) : super(v, n);
}

class LocationSharing extends $pb.ProtobufEnum {
  static const LocationSharing LocUnset = LocationSharing._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LocUnset');
  static const LocationSharing LocEnabled = LocationSharing._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LocEnabled');
  static const LocationSharing LocDisabled = LocationSharing._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LocDisabled');

  static const $core.List<LocationSharing> values = <LocationSharing> [
    LocUnset,
    LocEnabled,
    LocDisabled,
  ];

  static final $core.Map<$core.int, LocationSharing> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LocationSharing? valueOf($core.int value) => _byValue[value];

  const LocationSharing._($core.int v, $core.String n) : super(v, n);
}

class RadioConfig_UserPreferences_EnvironmentalMeasurementSensorType extends $pb.ProtobufEnum {
  static const RadioConfig_UserPreferences_EnvironmentalMeasurementSensorType DHT11 = RadioConfig_UserPreferences_EnvironmentalMeasurementSensorType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DHT11');

  static const $core.List<RadioConfig_UserPreferences_EnvironmentalMeasurementSensorType> values = <RadioConfig_UserPreferences_EnvironmentalMeasurementSensorType> [
    DHT11,
  ];

  static final $core.Map<$core.int, RadioConfig_UserPreferences_EnvironmentalMeasurementSensorType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RadioConfig_UserPreferences_EnvironmentalMeasurementSensorType? valueOf($core.int value) => _byValue[value];

  const RadioConfig_UserPreferences_EnvironmentalMeasurementSensorType._($core.int v, $core.String n) : super(v, n);
}

