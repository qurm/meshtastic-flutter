///
//  Generated code. Do not modify.
//  source: apponly.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'mesh.pb.dart' as $0;
import 'channel.pb.dart' as $1;

class ServiceEnvelope extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceEnvelope', createEmptyInstance: create)
    ..aOM<$0.MeshPacket>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'packet', subBuilder: $0.MeshPacket.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gatewayId')
    ..hasRequiredFields = false
  ;

  ServiceEnvelope._() : super();
  factory ServiceEnvelope({
    $0.MeshPacket packet,
    $core.String channelId,
    $core.String gatewayId,
  }) {
    final _result = create();
    if (packet != null) {
      _result.packet = packet;
    }
    if (channelId != null) {
      _result.channelId = channelId;
    }
    if (gatewayId != null) {
      _result.gatewayId = gatewayId;
    }
    return _result;
  }
  factory ServiceEnvelope.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceEnvelope.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceEnvelope clone() => ServiceEnvelope()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceEnvelope copyWith(void Function(ServiceEnvelope) updates) => super.copyWith((message) => updates(message as ServiceEnvelope)) as ServiceEnvelope; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceEnvelope create() => ServiceEnvelope._();
  ServiceEnvelope createEmptyInstance() => create();
  static $pb.PbList<ServiceEnvelope> createRepeated() => $pb.PbList<ServiceEnvelope>();
  @$core.pragma('dart2js:noInline')
  static ServiceEnvelope getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceEnvelope>(create);
  static ServiceEnvelope _defaultInstance;

  @$pb.TagNumber(1)
  $0.MeshPacket get packet => $_getN(0);
  @$pb.TagNumber(1)
  set packet($0.MeshPacket v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPacket() => $_has(0);
  @$pb.TagNumber(1)
  void clearPacket() => clearField(1);
  @$pb.TagNumber(1)
  $0.MeshPacket ensurePacket() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get channelId => $_getSZ(1);
  @$pb.TagNumber(2)
  set channelId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChannelId() => $_has(1);
  @$pb.TagNumber(2)
  void clearChannelId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get gatewayId => $_getSZ(2);
  @$pb.TagNumber(3)
  set gatewayId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGatewayId() => $_has(2);
  @$pb.TagNumber(3)
  void clearGatewayId() => clearField(3);
}

class ChannelSet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelSet', createEmptyInstance: create)
    ..pc<$1.ChannelSettings>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'settings', $pb.PbFieldType.PM, subBuilder: $1.ChannelSettings.create)
    ..hasRequiredFields = false
  ;

  ChannelSet._() : super();
  factory ChannelSet({
    $core.Iterable<$1.ChannelSettings> settings,
  }) {
    final _result = create();
    if (settings != null) {
      _result.settings.addAll(settings);
    }
    return _result;
  }
  factory ChannelSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelSet clone() => ChannelSet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelSet copyWith(void Function(ChannelSet) updates) => super.copyWith((message) => updates(message as ChannelSet)) as ChannelSet; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelSet create() => ChannelSet._();
  ChannelSet createEmptyInstance() => create();
  static $pb.PbList<ChannelSet> createRepeated() => $pb.PbList<ChannelSet>();
  @$core.pragma('dart2js:noInline')
  static ChannelSet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelSet>(create);
  static ChannelSet _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.ChannelSettings> get settings => $_getList(0);
}

