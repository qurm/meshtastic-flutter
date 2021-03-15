///
//  Generated code. Do not modify.
//  source: remote_hardware.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'remote_hardware.pbenum.dart';

export 'remote_hardware.pbenum.dart';

class HardwareMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HardwareMessage', createEmptyInstance: create)
    ..e<HardwareMessage_Type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'typ', $pb.PbFieldType.OE, defaultOrMaker: HardwareMessage_Type.UNSET, valueOf: HardwareMessage_Type.valueOf, enumValues: HardwareMessage_Type.values)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gpioMask', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gpioValue', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  HardwareMessage._() : super();
  factory HardwareMessage({
    HardwareMessage_Type typ,
    $fixnum.Int64 gpioMask,
    $fixnum.Int64 gpioValue,
  }) {
    final _result = create();
    if (typ != null) {
      _result.typ = typ;
    }
    if (gpioMask != null) {
      _result.gpioMask = gpioMask;
    }
    if (gpioValue != null) {
      _result.gpioValue = gpioValue;
    }
    return _result;
  }
  factory HardwareMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HardwareMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HardwareMessage clone() => HardwareMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HardwareMessage copyWith(void Function(HardwareMessage) updates) => super.copyWith((message) => updates(message as HardwareMessage)) as HardwareMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HardwareMessage create() => HardwareMessage._();
  HardwareMessage createEmptyInstance() => create();
  static $pb.PbList<HardwareMessage> createRepeated() => $pb.PbList<HardwareMessage>();
  @$core.pragma('dart2js:noInline')
  static HardwareMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HardwareMessage>(create);
  static HardwareMessage _defaultInstance;

  @$pb.TagNumber(1)
  HardwareMessage_Type get typ => $_getN(0);
  @$pb.TagNumber(1)
  set typ(HardwareMessage_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTyp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTyp() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get gpioMask => $_getI64(1);
  @$pb.TagNumber(2)
  set gpioMask($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGpioMask() => $_has(1);
  @$pb.TagNumber(2)
  void clearGpioMask() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get gpioValue => $_getI64(2);
  @$pb.TagNumber(3)
  set gpioValue($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGpioValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearGpioValue() => clearField(3);
}

