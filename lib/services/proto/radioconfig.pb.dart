///
//  Generated code. Do not modify.
//  source: radioconfig.proto
//

// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'radioconfig.pbenum.dart';

export 'radioconfig.pbenum.dart';

class RadioConfig_UserPreferences extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RadioConfig.UserPreferences',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'positionBroadcastSecs',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'sendOwnerInterval',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'waitBluetoothSecs',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'screenOnSecs',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'phoneTimeoutSecs',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(
        7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneSdsTimeoutSec', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'meshSdsTimeoutSecs', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sdsSecs', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lsSecs', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minWakeSecs', $pb.PbFieldType.OU3)
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiSsid')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiPassword')
    ..aOB(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiApMode')
    ..e<RegionCode>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'region', $pb.PbFieldType.OE, defaultOrMaker: RegionCode.Unset, valueOf: RegionCode.valueOf, enumValues: RegionCode.values)
    ..e<ChargeCurrent>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chargeCurrent', $pb.PbFieldType.OE, defaultOrMaker: ChargeCurrent.MAUnset, valueOf: ChargeCurrent.valueOf, enumValues: ChargeCurrent.values)
    ..e<LocationSharing>(32, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationShare', $pb.PbFieldType.OE, defaultOrMaker: LocationSharing.LocUnset, valueOf: LocationSharing.valueOf, enumValues: LocationSharing.values)
    ..e<GpsOperation>(33, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gpsOperation', $pb.PbFieldType.OE, defaultOrMaker: GpsOperation.GpsOpUnset, valueOf: GpsOperation.valueOf, enumValues: GpsOperation.values)
    ..a<$core.int>(34, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gpsUpdateInterval', $pb.PbFieldType.OU3)
    ..a<$core.int>(36, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gpsAttemptTime', $pb.PbFieldType.OU3)
    ..aOB(37, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isRouter')
    ..aOB(38, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isLowPower')
    ..aOB(39, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fixedPosition')
    ..aOB(100, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'factoryReset')
    ..aOB(101, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'debugLogEnabled')
    ..p<$core.int>(103, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ignoreIncoming', $pb.PbFieldType.PU3)
    ..aOB(120, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serialpluginEnabled')
    ..aOB(121, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serialpluginEcho')
    ..a<$core.int>(122, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serialpluginRxd', $pb.PbFieldType.OU3)
    ..a<$core.int>(123, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serialpluginTxd', $pb.PbFieldType.OU3)
    ..a<$core.int>(124, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serialpluginTimeout', $pb.PbFieldType.OU3)
    ..a<$core.int>(125, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serialpluginMode', $pb.PbFieldType.OU3)
    ..aOB(126, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extNotificationPluginEnabled')
    ..a<$core.int>(127, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extNotificationPluginOutputMs', $pb.PbFieldType.OU3)
    ..a<$core.int>(128, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extNotificationPluginOutput', $pb.PbFieldType.OU3)
    ..aOB(129, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extNotificationPluginActive')
    ..aOB(130, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extNotificationPluginAlertMessage')
    ..aOB(131, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extNotificationPluginAlertBell')
    ..aOB(132, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rangeTestPluginEnabled')
    ..a<$core.int>(133, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rangeTestPluginSender', $pb.PbFieldType.OU3)
    ..aOB(134, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rangeTestPluginSave')
    ..a<$core.int>(137, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeForwardPluginRecords', $pb.PbFieldType.OU3)
    ..aOB(140, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'environmentalMeasurementPluginMeasurementEnabled')
    ..aOB(141, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'environmentalMeasurementPluginScreenEnabled')
    ..a<$core.int>(142, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'environmentalMeasurementPluginReadErrorCountThreshold', $pb.PbFieldType.OU3)
    ..a<$core.int>(143, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'environmentalMeasurementPluginUpdateInterval', $pb.PbFieldType.OU3)
    ..a<$core.int>(144, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'environmentalMeasurementPluginRecoveryInterval', $pb.PbFieldType.OU3)
    ..aOB(145, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'environmentalMeasurementPluginDisplayFarenheit')
    ..e<RadioConfig_UserPreferences_EnvironmentalMeasurementSensorType>(146, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'environmentalMeasurementPluginSensorType', $pb.PbFieldType.OE, defaultOrMaker: RadioConfig_UserPreferences_EnvironmentalMeasurementSensorType.DHT11, valueOf: RadioConfig_UserPreferences_EnvironmentalMeasurementSensorType.valueOf, enumValues: RadioConfig_UserPreferences_EnvironmentalMeasurementSensorType.values)
    ..a<$core.int>(147, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'environmentalMeasurementPluginSensorPin', $pb.PbFieldType.OU3)
    ..aOB(148, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeForwardPluginEnabled')
    ..hasRequiredFields = false;

  RadioConfig_UserPreferences._() : super();
  factory RadioConfig_UserPreferences({
    $core.int? positionBroadcastSecs,
    $core.int? sendOwnerInterval,
    $core.int? waitBluetoothSecs,
    $core.int? screenOnSecs,
    $core.int? phoneTimeoutSecs,
    $core.int? phoneSdsTimeoutSec,
    $core.int? meshSdsTimeoutSecs,
    $core.int? sdsSecs,
    $core.int? lsSecs,
    $core.int? minWakeSecs,
    $core.String? wifiSsid,
    $core.String? wifiPassword,
    $core.bool? wifiApMode,
    RegionCode? region,
    ChargeCurrent? chargeCurrent,
    LocationSharing? locationShare,
    GpsOperation? gpsOperation,
    $core.int? gpsUpdateInterval,
    $core.int? gpsAttemptTime,
    $core.bool? isRouter,
    $core.bool? isLowPower,
    $core.bool? fixedPosition,
    $core.bool? factoryReset,
    $core.bool? debugLogEnabled,
    $core.Iterable<$core.int>? ignoreIncoming,
    $core.bool? serialpluginEnabled,
    $core.bool? serialpluginEcho,
    $core.int? serialpluginRxd,
    $core.int? serialpluginTxd,
    $core.int? serialpluginTimeout,
    $core.int? serialpluginMode,
    $core.bool? extNotificationPluginEnabled,
    $core.int? extNotificationPluginOutputMs,
    $core.int? extNotificationPluginOutput,
    $core.bool? extNotificationPluginActive,
    $core.bool? extNotificationPluginAlertMessage,
    $core.bool? extNotificationPluginAlertBell,
    $core.bool? rangeTestPluginEnabled,
    $core.int? rangeTestPluginSender,
    $core.bool? rangeTestPluginSave,
    $core.int? storeForwardPluginRecords,
    $core.bool? environmentalMeasurementPluginMeasurementEnabled,
    $core.bool? environmentalMeasurementPluginScreenEnabled,
    $core.int? environmentalMeasurementPluginReadErrorCountThreshold,
    $core.int? environmentalMeasurementPluginUpdateInterval,
    $core.int? environmentalMeasurementPluginRecoveryInterval,
    $core.bool? environmentalMeasurementPluginDisplayFarenheit,
    RadioConfig_UserPreferences_EnvironmentalMeasurementSensorType?
        environmentalMeasurementPluginSensorType,
    $core.int? environmentalMeasurementPluginSensorPin,
    $core.bool? storeForwardPluginEnabled,
  }) {
    final _result = create();
    if (positionBroadcastSecs != null) {
      _result.positionBroadcastSecs = positionBroadcastSecs;
    }
    if (sendOwnerInterval != null) {
      _result.sendOwnerInterval = sendOwnerInterval;
    }
    if (waitBluetoothSecs != null) {
      _result.waitBluetoothSecs = waitBluetoothSecs;
    }
    if (screenOnSecs != null) {
      _result.screenOnSecs = screenOnSecs;
    }
    if (phoneTimeoutSecs != null) {
      _result.phoneTimeoutSecs = phoneTimeoutSecs;
    }
    if (phoneSdsTimeoutSec != null) {
      _result.phoneSdsTimeoutSec = phoneSdsTimeoutSec;
    }
    if (meshSdsTimeoutSecs != null) {
      _result.meshSdsTimeoutSecs = meshSdsTimeoutSecs;
    }
    if (sdsSecs != null) {
      _result.sdsSecs = sdsSecs;
    }
    if (lsSecs != null) {
      _result.lsSecs = lsSecs;
    }
    if (minWakeSecs != null) {
      _result.minWakeSecs = minWakeSecs;
    }
    if (wifiSsid != null) {
      _result.wifiSsid = wifiSsid;
    }
    if (wifiPassword != null) {
      _result.wifiPassword = wifiPassword;
    }
    if (wifiApMode != null) {
      _result.wifiApMode = wifiApMode;
    }
    if (region != null) {
      _result.region = region;
    }
    if (chargeCurrent != null) {
      _result.chargeCurrent = chargeCurrent;
    }
    if (locationShare != null) {
      _result.locationShare = locationShare;
    }
    if (gpsOperation != null) {
      _result.gpsOperation = gpsOperation;
    }
    if (gpsUpdateInterval != null) {
      _result.gpsUpdateInterval = gpsUpdateInterval;
    }
    if (gpsAttemptTime != null) {
      _result.gpsAttemptTime = gpsAttemptTime;
    }
    if (isRouter != null) {
      _result.isRouter = isRouter;
    }
    if (isLowPower != null) {
      _result.isLowPower = isLowPower;
    }
    if (fixedPosition != null) {
      _result.fixedPosition = fixedPosition;
    }
    if (factoryReset != null) {
      _result.factoryReset = factoryReset;
    }
    if (debugLogEnabled != null) {
      _result.debugLogEnabled = debugLogEnabled;
    }
    if (ignoreIncoming != null) {
      _result.ignoreIncoming.addAll(ignoreIncoming);
    }
    if (serialpluginEnabled != null) {
      _result.serialpluginEnabled = serialpluginEnabled;
    }
    if (serialpluginEcho != null) {
      _result.serialpluginEcho = serialpluginEcho;
    }
    if (serialpluginRxd != null) {
      _result.serialpluginRxd = serialpluginRxd;
    }
    if (serialpluginTxd != null) {
      _result.serialpluginTxd = serialpluginTxd;
    }
    if (serialpluginTimeout != null) {
      _result.serialpluginTimeout = serialpluginTimeout;
    }
    if (serialpluginMode != null) {
      _result.serialpluginMode = serialpluginMode;
    }
    if (extNotificationPluginEnabled != null) {
      _result.extNotificationPluginEnabled = extNotificationPluginEnabled;
    }
    if (extNotificationPluginOutputMs != null) {
      _result.extNotificationPluginOutputMs = extNotificationPluginOutputMs;
    }
    if (extNotificationPluginOutput != null) {
      _result.extNotificationPluginOutput = extNotificationPluginOutput;
    }
    if (extNotificationPluginActive != null) {
      _result.extNotificationPluginActive = extNotificationPluginActive;
    }
    if (extNotificationPluginAlertMessage != null) {
      _result.extNotificationPluginAlertMessage =
          extNotificationPluginAlertMessage;
    }
    if (extNotificationPluginAlertBell != null) {
      _result.extNotificationPluginAlertBell = extNotificationPluginAlertBell;
    }
    if (rangeTestPluginEnabled != null) {
      _result.rangeTestPluginEnabled = rangeTestPluginEnabled;
    }
    if (rangeTestPluginSender != null) {
      _result.rangeTestPluginSender = rangeTestPluginSender;
    }
    if (rangeTestPluginSave != null) {
      _result.rangeTestPluginSave = rangeTestPluginSave;
    }
    if (storeForwardPluginRecords != null) {
      _result.storeForwardPluginRecords = storeForwardPluginRecords;
    }
    if (environmentalMeasurementPluginMeasurementEnabled != null) {
      _result.environmentalMeasurementPluginMeasurementEnabled =
          environmentalMeasurementPluginMeasurementEnabled;
    }
    if (environmentalMeasurementPluginScreenEnabled != null) {
      _result.environmentalMeasurementPluginScreenEnabled =
          environmentalMeasurementPluginScreenEnabled;
    }
    if (environmentalMeasurementPluginReadErrorCountThreshold != null) {
      _result.environmentalMeasurementPluginReadErrorCountThreshold =
          environmentalMeasurementPluginReadErrorCountThreshold;
    }
    if (environmentalMeasurementPluginUpdateInterval != null) {
      _result.environmentalMeasurementPluginUpdateInterval =
          environmentalMeasurementPluginUpdateInterval;
    }
    if (environmentalMeasurementPluginRecoveryInterval != null) {
      _result.environmentalMeasurementPluginRecoveryInterval =
          environmentalMeasurementPluginRecoveryInterval;
    }
    if (environmentalMeasurementPluginDisplayFarenheit != null) {
      _result.environmentalMeasurementPluginDisplayFarenheit =
          environmentalMeasurementPluginDisplayFarenheit;
    }
    if (environmentalMeasurementPluginSensorType != null) {
      _result.environmentalMeasurementPluginSensorType =
          environmentalMeasurementPluginSensorType;
    }
    if (environmentalMeasurementPluginSensorPin != null) {
      _result.environmentalMeasurementPluginSensorPin =
          environmentalMeasurementPluginSensorPin;
    }
    if (storeForwardPluginEnabled != null) {
      _result.storeForwardPluginEnabled = storeForwardPluginEnabled;
    }
    return _result;
  }
  factory RadioConfig_UserPreferences.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RadioConfig_UserPreferences.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RadioConfig_UserPreferences clone() =>
      RadioConfig_UserPreferences()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RadioConfig_UserPreferences copyWith(
          void Function(RadioConfig_UserPreferences) updates) =>
      super.copyWith(
              (message) => updates(message as RadioConfig_UserPreferences))
          as RadioConfig_UserPreferences; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RadioConfig_UserPreferences create() =>
      RadioConfig_UserPreferences._();
  RadioConfig_UserPreferences createEmptyInstance() => create();
  static $pb.PbList<RadioConfig_UserPreferences> createRepeated() =>
      $pb.PbList<RadioConfig_UserPreferences>();
  @$core.pragma('dart2js:noInline')
  static RadioConfig_UserPreferences getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RadioConfig_UserPreferences>(create);
  static RadioConfig_UserPreferences? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get positionBroadcastSecs => $_getIZ(0);
  @$pb.TagNumber(1)
  set positionBroadcastSecs($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPositionBroadcastSecs() => $_has(0);
  @$pb.TagNumber(1)
  void clearPositionBroadcastSecs() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get sendOwnerInterval => $_getIZ(1);
  @$pb.TagNumber(2)
  set sendOwnerInterval($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSendOwnerInterval() => $_has(1);
  @$pb.TagNumber(2)
  void clearSendOwnerInterval() => clearField(2);

  @$pb.TagNumber(4)
  $core.int get waitBluetoothSecs => $_getIZ(2);
  @$pb.TagNumber(4)
  set waitBluetoothSecs($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasWaitBluetoothSecs() => $_has(2);
  @$pb.TagNumber(4)
  void clearWaitBluetoothSecs() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get screenOnSecs => $_getIZ(3);
  @$pb.TagNumber(5)
  set screenOnSecs($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasScreenOnSecs() => $_has(3);
  @$pb.TagNumber(5)
  void clearScreenOnSecs() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get phoneTimeoutSecs => $_getIZ(4);
  @$pb.TagNumber(6)
  set phoneTimeoutSecs($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasPhoneTimeoutSecs() => $_has(4);
  @$pb.TagNumber(6)
  void clearPhoneTimeoutSecs() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get phoneSdsTimeoutSec => $_getIZ(5);
  @$pb.TagNumber(7)
  set phoneSdsTimeoutSec($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasPhoneSdsTimeoutSec() => $_has(5);
  @$pb.TagNumber(7)
  void clearPhoneSdsTimeoutSec() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get meshSdsTimeoutSecs => $_getIZ(6);
  @$pb.TagNumber(8)
  set meshSdsTimeoutSecs($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasMeshSdsTimeoutSecs() => $_has(6);
  @$pb.TagNumber(8)
  void clearMeshSdsTimeoutSecs() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get sdsSecs => $_getIZ(7);
  @$pb.TagNumber(9)
  set sdsSecs($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasSdsSecs() => $_has(7);
  @$pb.TagNumber(9)
  void clearSdsSecs() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get lsSecs => $_getIZ(8);
  @$pb.TagNumber(10)
  set lsSecs($core.int v) {
    $_setUnsignedInt32(8, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasLsSecs() => $_has(8);
  @$pb.TagNumber(10)
  void clearLsSecs() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get minWakeSecs => $_getIZ(9);
  @$pb.TagNumber(11)
  set minWakeSecs($core.int v) {
    $_setUnsignedInt32(9, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasMinWakeSecs() => $_has(9);
  @$pb.TagNumber(11)
  void clearMinWakeSecs() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get wifiSsid => $_getSZ(10);
  @$pb.TagNumber(12)
  set wifiSsid($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasWifiSsid() => $_has(10);
  @$pb.TagNumber(12)
  void clearWifiSsid() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get wifiPassword => $_getSZ(11);
  @$pb.TagNumber(13)
  set wifiPassword($core.String v) {
    $_setString(11, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasWifiPassword() => $_has(11);
  @$pb.TagNumber(13)
  void clearWifiPassword() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get wifiApMode => $_getBF(12);
  @$pb.TagNumber(14)
  set wifiApMode($core.bool v) {
    $_setBool(12, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasWifiApMode() => $_has(12);
  @$pb.TagNumber(14)
  void clearWifiApMode() => clearField(14);

  @$pb.TagNumber(15)
  RegionCode get region => $_getN(13);
  @$pb.TagNumber(15)
  set region(RegionCode v) {
    setField(15, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasRegion() => $_has(13);
  @$pb.TagNumber(15)
  void clearRegion() => clearField(15);

  @$pb.TagNumber(16)
  ChargeCurrent get chargeCurrent => $_getN(14);
  @$pb.TagNumber(16)
  set chargeCurrent(ChargeCurrent v) {
    setField(16, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasChargeCurrent() => $_has(14);
  @$pb.TagNumber(16)
  void clearChargeCurrent() => clearField(16);

  @$pb.TagNumber(32)
  LocationSharing get locationShare => $_getN(15);
  @$pb.TagNumber(32)
  set locationShare(LocationSharing v) {
    setField(32, v);
  }

  @$pb.TagNumber(32)
  $core.bool hasLocationShare() => $_has(15);
  @$pb.TagNumber(32)
  void clearLocationShare() => clearField(32);

  @$pb.TagNumber(33)
  GpsOperation get gpsOperation => $_getN(16);
  @$pb.TagNumber(33)
  set gpsOperation(GpsOperation v) {
    setField(33, v);
  }

  @$pb.TagNumber(33)
  $core.bool hasGpsOperation() => $_has(16);
  @$pb.TagNumber(33)
  void clearGpsOperation() => clearField(33);

  @$pb.TagNumber(34)
  $core.int get gpsUpdateInterval => $_getIZ(17);
  @$pb.TagNumber(34)
  set gpsUpdateInterval($core.int v) {
    $_setUnsignedInt32(17, v);
  }

  @$pb.TagNumber(34)
  $core.bool hasGpsUpdateInterval() => $_has(17);
  @$pb.TagNumber(34)
  void clearGpsUpdateInterval() => clearField(34);

  @$pb.TagNumber(36)
  $core.int get gpsAttemptTime => $_getIZ(18);
  @$pb.TagNumber(36)
  set gpsAttemptTime($core.int v) {
    $_setUnsignedInt32(18, v);
  }

  @$pb.TagNumber(36)
  $core.bool hasGpsAttemptTime() => $_has(18);
  @$pb.TagNumber(36)
  void clearGpsAttemptTime() => clearField(36);

  @$pb.TagNumber(37)
  $core.bool get isRouter => $_getBF(19);
  @$pb.TagNumber(37)
  set isRouter($core.bool v) {
    $_setBool(19, v);
  }

  @$pb.TagNumber(37)
  $core.bool hasIsRouter() => $_has(19);
  @$pb.TagNumber(37)
  void clearIsRouter() => clearField(37);

  @$pb.TagNumber(38)
  $core.bool get isLowPower => $_getBF(20);
  @$pb.TagNumber(38)
  set isLowPower($core.bool v) {
    $_setBool(20, v);
  }

  @$pb.TagNumber(38)
  $core.bool hasIsLowPower() => $_has(20);
  @$pb.TagNumber(38)
  void clearIsLowPower() => clearField(38);

  @$pb.TagNumber(39)
  $core.bool get fixedPosition => $_getBF(21);
  @$pb.TagNumber(39)
  set fixedPosition($core.bool v) {
    $_setBool(21, v);
  }

  @$pb.TagNumber(39)
  $core.bool hasFixedPosition() => $_has(21);
  @$pb.TagNumber(39)
  void clearFixedPosition() => clearField(39);

  @$pb.TagNumber(100)
  $core.bool get factoryReset => $_getBF(22);
  @$pb.TagNumber(100)
  set factoryReset($core.bool v) {
    $_setBool(22, v);
  }

  @$pb.TagNumber(100)
  $core.bool hasFactoryReset() => $_has(22);
  @$pb.TagNumber(100)
  void clearFactoryReset() => clearField(100);

  @$pb.TagNumber(101)
  $core.bool get debugLogEnabled => $_getBF(23);
  @$pb.TagNumber(101)
  set debugLogEnabled($core.bool v) {
    $_setBool(23, v);
  }

  @$pb.TagNumber(101)
  $core.bool hasDebugLogEnabled() => $_has(23);
  @$pb.TagNumber(101)
  void clearDebugLogEnabled() => clearField(101);

  @$pb.TagNumber(103)
  $core.List<$core.int> get ignoreIncoming => $_getList(24);

  @$pb.TagNumber(120)
  $core.bool get serialpluginEnabled => $_getBF(25);
  @$pb.TagNumber(120)
  set serialpluginEnabled($core.bool v) {
    $_setBool(25, v);
  }

  @$pb.TagNumber(120)
  $core.bool hasSerialpluginEnabled() => $_has(25);
  @$pb.TagNumber(120)
  void clearSerialpluginEnabled() => clearField(120);

  @$pb.TagNumber(121)
  $core.bool get serialpluginEcho => $_getBF(26);
  @$pb.TagNumber(121)
  set serialpluginEcho($core.bool v) {
    $_setBool(26, v);
  }

  @$pb.TagNumber(121)
  $core.bool hasSerialpluginEcho() => $_has(26);
  @$pb.TagNumber(121)
  void clearSerialpluginEcho() => clearField(121);

  @$pb.TagNumber(122)
  $core.int get serialpluginRxd => $_getIZ(27);
  @$pb.TagNumber(122)
  set serialpluginRxd($core.int v) {
    $_setUnsignedInt32(27, v);
  }

  @$pb.TagNumber(122)
  $core.bool hasSerialpluginRxd() => $_has(27);
  @$pb.TagNumber(122)
  void clearSerialpluginRxd() => clearField(122);

  @$pb.TagNumber(123)
  $core.int get serialpluginTxd => $_getIZ(28);
  @$pb.TagNumber(123)
  set serialpluginTxd($core.int v) {
    $_setUnsignedInt32(28, v);
  }

  @$pb.TagNumber(123)
  $core.bool hasSerialpluginTxd() => $_has(28);
  @$pb.TagNumber(123)
  void clearSerialpluginTxd() => clearField(123);

  @$pb.TagNumber(124)
  $core.int get serialpluginTimeout => $_getIZ(29);
  @$pb.TagNumber(124)
  set serialpluginTimeout($core.int v) {
    $_setUnsignedInt32(29, v);
  }

  @$pb.TagNumber(124)
  $core.bool hasSerialpluginTimeout() => $_has(29);
  @$pb.TagNumber(124)
  void clearSerialpluginTimeout() => clearField(124);

  @$pb.TagNumber(125)
  $core.int get serialpluginMode => $_getIZ(30);
  @$pb.TagNumber(125)
  set serialpluginMode($core.int v) {
    $_setUnsignedInt32(30, v);
  }

  @$pb.TagNumber(125)
  $core.bool hasSerialpluginMode() => $_has(30);
  @$pb.TagNumber(125)
  void clearSerialpluginMode() => clearField(125);

  @$pb.TagNumber(126)
  $core.bool get extNotificationPluginEnabled => $_getBF(31);
  @$pb.TagNumber(126)
  set extNotificationPluginEnabled($core.bool v) {
    $_setBool(31, v);
  }

  @$pb.TagNumber(126)
  $core.bool hasExtNotificationPluginEnabled() => $_has(31);
  @$pb.TagNumber(126)
  void clearExtNotificationPluginEnabled() => clearField(126);

  @$pb.TagNumber(127)
  $core.int get extNotificationPluginOutputMs => $_getIZ(32);
  @$pb.TagNumber(127)
  set extNotificationPluginOutputMs($core.int v) {
    $_setUnsignedInt32(32, v);
  }

  @$pb.TagNumber(127)
  $core.bool hasExtNotificationPluginOutputMs() => $_has(32);
  @$pb.TagNumber(127)
  void clearExtNotificationPluginOutputMs() => clearField(127);

  @$pb.TagNumber(128)
  $core.int get extNotificationPluginOutput => $_getIZ(33);
  @$pb.TagNumber(128)
  set extNotificationPluginOutput($core.int v) {
    $_setUnsignedInt32(33, v);
  }

  @$pb.TagNumber(128)
  $core.bool hasExtNotificationPluginOutput() => $_has(33);
  @$pb.TagNumber(128)
  void clearExtNotificationPluginOutput() => clearField(128);

  @$pb.TagNumber(129)
  $core.bool get extNotificationPluginActive => $_getBF(34);
  @$pb.TagNumber(129)
  set extNotificationPluginActive($core.bool v) {
    $_setBool(34, v);
  }

  @$pb.TagNumber(129)
  $core.bool hasExtNotificationPluginActive() => $_has(34);
  @$pb.TagNumber(129)
  void clearExtNotificationPluginActive() => clearField(129);

  @$pb.TagNumber(130)
  $core.bool get extNotificationPluginAlertMessage => $_getBF(35);
  @$pb.TagNumber(130)
  set extNotificationPluginAlertMessage($core.bool v) {
    $_setBool(35, v);
  }

  @$pb.TagNumber(130)
  $core.bool hasExtNotificationPluginAlertMessage() => $_has(35);
  @$pb.TagNumber(130)
  void clearExtNotificationPluginAlertMessage() => clearField(130);

  @$pb.TagNumber(131)
  $core.bool get extNotificationPluginAlertBell => $_getBF(36);
  @$pb.TagNumber(131)
  set extNotificationPluginAlertBell($core.bool v) {
    $_setBool(36, v);
  }

  @$pb.TagNumber(131)
  $core.bool hasExtNotificationPluginAlertBell() => $_has(36);
  @$pb.TagNumber(131)
  void clearExtNotificationPluginAlertBell() => clearField(131);

  @$pb.TagNumber(132)
  $core.bool get rangeTestPluginEnabled => $_getBF(37);
  @$pb.TagNumber(132)
  set rangeTestPluginEnabled($core.bool v) {
    $_setBool(37, v);
  }

  @$pb.TagNumber(132)
  $core.bool hasRangeTestPluginEnabled() => $_has(37);
  @$pb.TagNumber(132)
  void clearRangeTestPluginEnabled() => clearField(132);

  @$pb.TagNumber(133)
  $core.int get rangeTestPluginSender => $_getIZ(38);
  @$pb.TagNumber(133)
  set rangeTestPluginSender($core.int v) {
    $_setUnsignedInt32(38, v);
  }

  @$pb.TagNumber(133)
  $core.bool hasRangeTestPluginSender() => $_has(38);
  @$pb.TagNumber(133)
  void clearRangeTestPluginSender() => clearField(133);

  @$pb.TagNumber(134)
  $core.bool get rangeTestPluginSave => $_getBF(39);
  @$pb.TagNumber(134)
  set rangeTestPluginSave($core.bool v) {
    $_setBool(39, v);
  }

  @$pb.TagNumber(134)
  $core.bool hasRangeTestPluginSave() => $_has(39);
  @$pb.TagNumber(134)
  void clearRangeTestPluginSave() => clearField(134);

  @$pb.TagNumber(137)
  $core.int get storeForwardPluginRecords => $_getIZ(40);
  @$pb.TagNumber(137)
  set storeForwardPluginRecords($core.int v) {
    $_setUnsignedInt32(40, v);
  }

  @$pb.TagNumber(137)
  $core.bool hasStoreForwardPluginRecords() => $_has(40);
  @$pb.TagNumber(137)
  void clearStoreForwardPluginRecords() => clearField(137);

  @$pb.TagNumber(140)
  $core.bool get environmentalMeasurementPluginMeasurementEnabled =>
      $_getBF(41);
  @$pb.TagNumber(140)
  set environmentalMeasurementPluginMeasurementEnabled($core.bool v) {
    $_setBool(41, v);
  }

  @$pb.TagNumber(140)
  $core.bool hasEnvironmentalMeasurementPluginMeasurementEnabled() => $_has(41);
  @$pb.TagNumber(140)
  void clearEnvironmentalMeasurementPluginMeasurementEnabled() =>
      clearField(140);

  @$pb.TagNumber(141)
  $core.bool get environmentalMeasurementPluginScreenEnabled => $_getBF(42);
  @$pb.TagNumber(141)
  set environmentalMeasurementPluginScreenEnabled($core.bool v) {
    $_setBool(42, v);
  }

  @$pb.TagNumber(141)
  $core.bool hasEnvironmentalMeasurementPluginScreenEnabled() => $_has(42);
  @$pb.TagNumber(141)
  void clearEnvironmentalMeasurementPluginScreenEnabled() => clearField(141);

  @$pb.TagNumber(142)
  $core.int get environmentalMeasurementPluginReadErrorCountThreshold =>
      $_getIZ(43);
  @$pb.TagNumber(142)
  set environmentalMeasurementPluginReadErrorCountThreshold($core.int v) {
    $_setUnsignedInt32(43, v);
  }

  @$pb.TagNumber(142)
  $core.bool hasEnvironmentalMeasurementPluginReadErrorCountThreshold() =>
      $_has(43);
  @$pb.TagNumber(142)
  void clearEnvironmentalMeasurementPluginReadErrorCountThreshold() =>
      clearField(142);

  @$pb.TagNumber(143)
  $core.int get environmentalMeasurementPluginUpdateInterval => $_getIZ(44);
  @$pb.TagNumber(143)
  set environmentalMeasurementPluginUpdateInterval($core.int v) {
    $_setUnsignedInt32(44, v);
  }

  @$pb.TagNumber(143)
  $core.bool hasEnvironmentalMeasurementPluginUpdateInterval() => $_has(44);
  @$pb.TagNumber(143)
  void clearEnvironmentalMeasurementPluginUpdateInterval() => clearField(143);

  @$pb.TagNumber(144)
  $core.int get environmentalMeasurementPluginRecoveryInterval => $_getIZ(45);
  @$pb.TagNumber(144)
  set environmentalMeasurementPluginRecoveryInterval($core.int v) {
    $_setUnsignedInt32(45, v);
  }

  @$pb.TagNumber(144)
  $core.bool hasEnvironmentalMeasurementPluginRecoveryInterval() => $_has(45);
  @$pb.TagNumber(144)
  void clearEnvironmentalMeasurementPluginRecoveryInterval() => clearField(144);

  @$pb.TagNumber(145)
  $core.bool get environmentalMeasurementPluginDisplayFarenheit => $_getBF(46);
  @$pb.TagNumber(145)
  set environmentalMeasurementPluginDisplayFarenheit($core.bool v) {
    $_setBool(46, v);
  }

  @$pb.TagNumber(145)
  $core.bool hasEnvironmentalMeasurementPluginDisplayFarenheit() => $_has(46);
  @$pb.TagNumber(145)
  void clearEnvironmentalMeasurementPluginDisplayFarenheit() => clearField(145);

  @$pb.TagNumber(146)
  RadioConfig_UserPreferences_EnvironmentalMeasurementSensorType
      get environmentalMeasurementPluginSensorType => $_getN(47);
  @$pb.TagNumber(146)
  set environmentalMeasurementPluginSensorType(
      RadioConfig_UserPreferences_EnvironmentalMeasurementSensorType v) {
    setField(146, v);
  }

  @$pb.TagNumber(146)
  $core.bool hasEnvironmentalMeasurementPluginSensorType() => $_has(47);
  @$pb.TagNumber(146)
  void clearEnvironmentalMeasurementPluginSensorType() => clearField(146);

  @$pb.TagNumber(147)
  $core.int get environmentalMeasurementPluginSensorPin => $_getIZ(48);
  @$pb.TagNumber(147)
  set environmentalMeasurementPluginSensorPin($core.int v) {
    $_setUnsignedInt32(48, v);
  }

  @$pb.TagNumber(147)
  $core.bool hasEnvironmentalMeasurementPluginSensorPin() => $_has(48);
  @$pb.TagNumber(147)
  void clearEnvironmentalMeasurementPluginSensorPin() => clearField(147);

  @$pb.TagNumber(148)
  $core.bool get storeForwardPluginEnabled => $_getBF(49);
  @$pb.TagNumber(148)
  set storeForwardPluginEnabled($core.bool v) {
    $_setBool(49, v);
  }

  @$pb.TagNumber(148)
  $core.bool hasStoreForwardPluginEnabled() => $_has(49);
  @$pb.TagNumber(148)
  void clearStoreForwardPluginEnabled() => clearField(148);
}

class RadioConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RadioConfig',
      createEmptyInstance: create)
    ..aOM<RadioConfig_UserPreferences>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'preferences',
        subBuilder: RadioConfig_UserPreferences.create)
    ..hasRequiredFields = false;

  RadioConfig._() : super();
  factory RadioConfig({
    RadioConfig_UserPreferences? preferences,
  }) {
    final _result = create();
    if (preferences != null) {
      _result.preferences = preferences;
    }
    return _result;
  }
  factory RadioConfig.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RadioConfig.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RadioConfig clone() => RadioConfig()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RadioConfig copyWith(void Function(RadioConfig) updates) =>
      super.copyWith((message) => updates(message as RadioConfig))
          as RadioConfig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RadioConfig create() => RadioConfig._();
  RadioConfig createEmptyInstance() => create();
  static $pb.PbList<RadioConfig> createRepeated() => $pb.PbList<RadioConfig>();
  @$core.pragma('dart2js:noInline')
  static RadioConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RadioConfig>(create);
  static RadioConfig? _defaultInstance;

  @$pb.TagNumber(1)
  RadioConfig_UserPreferences get preferences => $_getN(0);
  @$pb.TagNumber(1)
  set preferences(RadioConfig_UserPreferences v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPreferences() => $_has(0);
  @$pb.TagNumber(1)
  void clearPreferences() => clearField(1);
  @$pb.TagNumber(1)
  RadioConfig_UserPreferences ensurePreferences() => $_ensure(0);
}
