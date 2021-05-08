///
//  Generated code. Do not modify.
//  source: remote_hardware.proto
//

// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class HardwareMessage_Type extends $pb.ProtobufEnum {
  static const HardwareMessage_Type UNSET = HardwareMessage_Type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNSET');
  static const HardwareMessage_Type WRITE_GPIOS = HardwareMessage_Type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WRITE_GPIOS');
  static const HardwareMessage_Type WATCH_GPIOS = HardwareMessage_Type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WATCH_GPIOS');
  static const HardwareMessage_Type GPIOS_CHANGED = HardwareMessage_Type._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GPIOS_CHANGED');
  static const HardwareMessage_Type READ_GPIOS = HardwareMessage_Type._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'READ_GPIOS');
  static const HardwareMessage_Type READ_GPIOS_REPLY = HardwareMessage_Type._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'READ_GPIOS_REPLY');

  static const $core.List<HardwareMessage_Type> values = <HardwareMessage_Type> [
    UNSET,
    WRITE_GPIOS,
    WATCH_GPIOS,
    GPIOS_CHANGED,
    READ_GPIOS,
    READ_GPIOS_REPLY,
  ];

  static final $core.Map<$core.int, HardwareMessage_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HardwareMessage_Type? valueOf($core.int value) => _byValue[value];

  const HardwareMessage_Type._($core.int v, $core.String n) : super(v, n);
}

