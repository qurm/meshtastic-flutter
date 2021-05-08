///
//  Generated code. Do not modify.
//  source: channel.proto
//

// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ChannelSettings_ModemConfig extends $pb.ProtobufEnum {
  static const ChannelSettings_ModemConfig Bw125Cr45Sf128 = ChannelSettings_ModemConfig._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Bw125Cr45Sf128');
  static const ChannelSettings_ModemConfig Bw500Cr45Sf128 = ChannelSettings_ModemConfig._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Bw500Cr45Sf128');
  static const ChannelSettings_ModemConfig Bw31_25Cr48Sf512 = ChannelSettings_ModemConfig._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Bw31_25Cr48Sf512');
  static const ChannelSettings_ModemConfig Bw125Cr48Sf4096 = ChannelSettings_ModemConfig._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Bw125Cr48Sf4096');

  static const $core.List<ChannelSettings_ModemConfig> values = <ChannelSettings_ModemConfig> [
    Bw125Cr45Sf128,
    Bw500Cr45Sf128,
    Bw31_25Cr48Sf512,
    Bw125Cr48Sf4096,
  ];

  static final $core.Map<$core.int, ChannelSettings_ModemConfig> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChannelSettings_ModemConfig? valueOf($core.int value) => _byValue[value];

  const ChannelSettings_ModemConfig._($core.int v, $core.String n) : super(v, n);
}

class Channel_Role extends $pb.ProtobufEnum {
  static const Channel_Role DISABLED = Channel_Role._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISABLED');
  static const Channel_Role PRIMARY = Channel_Role._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PRIMARY');
  static const Channel_Role SECONDARY = Channel_Role._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SECONDARY');

  static const $core.List<Channel_Role> values = <Channel_Role> [
    DISABLED,
    PRIMARY,
    SECONDARY,
  ];

  static final $core.Map<$core.int, Channel_Role> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Channel_Role? valueOf($core.int value) => _byValue[value];

  const Channel_Role._($core.int v, $core.String n) : super(v, n);
}

