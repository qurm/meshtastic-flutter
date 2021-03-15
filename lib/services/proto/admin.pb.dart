///
//  Generated code. Do not modify.
//  source: admin.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'radioconfig.pb.dart' as $0;
import 'mesh.pb.dart' as $1;
import 'channel.pb.dart' as $2;

enum AdminMessage_Variant {
  setRadio, 
  setOwner, 
  setChannel, 
  getRadioRequest, 
  getRadioResponse, 
  getChannelRequest, 
  getChannelResponse, 
  confirmSetChannel, 
  confirmSetRadio, 
  notSet
}

class AdminMessage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AdminMessage_Variant> _AdminMessage_VariantByTag = {
    1 : AdminMessage_Variant.setRadio,
    2 : AdminMessage_Variant.setOwner,
    3 : AdminMessage_Variant.setChannel,
    4 : AdminMessage_Variant.getRadioRequest,
    5 : AdminMessage_Variant.getRadioResponse,
    6 : AdminMessage_Variant.getChannelRequest,
    7 : AdminMessage_Variant.getChannelResponse,
    32 : AdminMessage_Variant.confirmSetChannel,
    33 : AdminMessage_Variant.confirmSetRadio,
    0 : AdminMessage_Variant.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AdminMessage', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 32, 33])
    ..aOM<$0.RadioConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setRadio', subBuilder: $0.RadioConfig.create)
    ..aOM<$1.User>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setOwner', subBuilder: $1.User.create)
    ..aOM<$2.Channel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setChannel', subBuilder: $2.Channel.create)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getRadioRequest')
    ..aOM<$0.RadioConfig>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getRadioResponse', subBuilder: $0.RadioConfig.create)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getChannelRequest', $pb.PbFieldType.OU3)
    ..aOM<$2.Channel>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getChannelResponse', subBuilder: $2.Channel.create)
    ..aOB(32, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confirmSetChannel')
    ..aOB(33, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confirmSetRadio')
    ..hasRequiredFields = false
  ;

  AdminMessage._() : super();
  factory AdminMessage({
    $0.RadioConfig setRadio,
    $1.User setOwner,
    $2.Channel setChannel,
    $core.bool getRadioRequest,
    $0.RadioConfig getRadioResponse,
    $core.int getChannelRequest,
    $2.Channel getChannelResponse,
    $core.bool confirmSetChannel,
    $core.bool confirmSetRadio,
  }) {
    final _result = create();
    if (setRadio != null) {
      _result.setRadio = setRadio;
    }
    if (setOwner != null) {
      _result.setOwner = setOwner;
    }
    if (setChannel != null) {
      _result.setChannel = setChannel;
    }
    if (getRadioRequest != null) {
      _result.getRadioRequest = getRadioRequest;
    }
    if (getRadioResponse != null) {
      _result.getRadioResponse = getRadioResponse;
    }
    if (getChannelRequest != null) {
      _result.getChannelRequest = getChannelRequest;
    }
    if (getChannelResponse != null) {
      _result.getChannelResponse = getChannelResponse;
    }
    if (confirmSetChannel != null) {
      _result.confirmSetChannel = confirmSetChannel;
    }
    if (confirmSetRadio != null) {
      _result.confirmSetRadio = confirmSetRadio;
    }
    return _result;
  }
  factory AdminMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AdminMessage clone() => AdminMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AdminMessage copyWith(void Function(AdminMessage) updates) => super.copyWith((message) => updates(message as AdminMessage)) as AdminMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminMessage create() => AdminMessage._();
  AdminMessage createEmptyInstance() => create();
  static $pb.PbList<AdminMessage> createRepeated() => $pb.PbList<AdminMessage>();
  @$core.pragma('dart2js:noInline')
  static AdminMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminMessage>(create);
  static AdminMessage _defaultInstance;

  AdminMessage_Variant whichVariant() => _AdminMessage_VariantByTag[$_whichOneof(0)];
  void clearVariant() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.RadioConfig get setRadio => $_getN(0);
  @$pb.TagNumber(1)
  set setRadio($0.RadioConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSetRadio() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetRadio() => clearField(1);
  @$pb.TagNumber(1)
  $0.RadioConfig ensureSetRadio() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.User get setOwner => $_getN(1);
  @$pb.TagNumber(2)
  set setOwner($1.User v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSetOwner() => $_has(1);
  @$pb.TagNumber(2)
  void clearSetOwner() => clearField(2);
  @$pb.TagNumber(2)
  $1.User ensureSetOwner() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.Channel get setChannel => $_getN(2);
  @$pb.TagNumber(3)
  set setChannel($2.Channel v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSetChannel() => $_has(2);
  @$pb.TagNumber(3)
  void clearSetChannel() => clearField(3);
  @$pb.TagNumber(3)
  $2.Channel ensureSetChannel() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get getRadioRequest => $_getBF(3);
  @$pb.TagNumber(4)
  set getRadioRequest($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGetRadioRequest() => $_has(3);
  @$pb.TagNumber(4)
  void clearGetRadioRequest() => clearField(4);

  @$pb.TagNumber(5)
  $0.RadioConfig get getRadioResponse => $_getN(4);
  @$pb.TagNumber(5)
  set getRadioResponse($0.RadioConfig v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGetRadioResponse() => $_has(4);
  @$pb.TagNumber(5)
  void clearGetRadioResponse() => clearField(5);
  @$pb.TagNumber(5)
  $0.RadioConfig ensureGetRadioResponse() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.int get getChannelRequest => $_getIZ(5);
  @$pb.TagNumber(6)
  set getChannelRequest($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGetChannelRequest() => $_has(5);
  @$pb.TagNumber(6)
  void clearGetChannelRequest() => clearField(6);

  @$pb.TagNumber(7)
  $2.Channel get getChannelResponse => $_getN(6);
  @$pb.TagNumber(7)
  set getChannelResponse($2.Channel v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasGetChannelResponse() => $_has(6);
  @$pb.TagNumber(7)
  void clearGetChannelResponse() => clearField(7);
  @$pb.TagNumber(7)
  $2.Channel ensureGetChannelResponse() => $_ensure(6);

  @$pb.TagNumber(32)
  $core.bool get confirmSetChannel => $_getBF(7);
  @$pb.TagNumber(32)
  set confirmSetChannel($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(32)
  $core.bool hasConfirmSetChannel() => $_has(7);
  @$pb.TagNumber(32)
  void clearConfirmSetChannel() => clearField(32);

  @$pb.TagNumber(33)
  $core.bool get confirmSetRadio => $_getBF(8);
  @$pb.TagNumber(33)
  set confirmSetRadio($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(33)
  $core.bool hasConfirmSetRadio() => $_has(8);
  @$pb.TagNumber(33)
  void clearConfirmSetRadio() => clearField(33);
}

