///
//  Generated code. Do not modify.
//  source: mesh.proto
//

// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class HardwareModel extends $pb.ProtobufEnum {
  static const HardwareModel UNSET = HardwareModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNSET');
  static const HardwareModel TLORA_V2 = HardwareModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TLORA_V2');
  static const HardwareModel TLORA_V1 = HardwareModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TLORA_V1');
  static const HardwareModel TLORA_V2_1_1p6 = HardwareModel._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TLORA_V2_1_1p6');
  static const HardwareModel TBEAM = HardwareModel._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TBEAM');
  static const HardwareModel HELTEC = HardwareModel._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HELTEC');
  static const HardwareModel TBEAM0p7 = HardwareModel._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TBEAM0p7');
  static const HardwareModel T_ECHO = HardwareModel._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'T_ECHO');
  static const HardwareModel TLORA_V1_1p3 = HardwareModel._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TLORA_V1_1p3');
  static const HardwareModel LORA_RELAY_V1 = HardwareModel._(32, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LORA_RELAY_V1');
  static const HardwareModel NRF52840DK = HardwareModel._(33, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NRF52840DK');
  static const HardwareModel PPR = HardwareModel._(34, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PPR');
  static const HardwareModel GENIEBLOCKS = HardwareModel._(35, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GENIEBLOCKS');
  static const HardwareModel NRF52_UNKNOWN = HardwareModel._(36, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NRF52_UNKNOWN');
  static const HardwareModel PORTDUINO = HardwareModel._(37, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PORTDUINO');
  static const HardwareModel ANDROID_SIM = HardwareModel._(38, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ANDROID_SIM');

  static const $core.List<HardwareModel> values = <HardwareModel> [
    UNSET,
    TLORA_V2,
    TLORA_V1,
    TLORA_V2_1_1p6,
    TBEAM,
    HELTEC,
    TBEAM0p7,
    T_ECHO,
    TLORA_V1_1p3,
    LORA_RELAY_V1,
    NRF52840DK,
    PPR,
    GENIEBLOCKS,
    NRF52_UNKNOWN,
    PORTDUINO,
    ANDROID_SIM,
  ];

  static final $core.Map<$core.int, HardwareModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HardwareModel? valueOf($core.int value) => _byValue[value];

  const HardwareModel._($core.int v, $core.String n) : super(v, n);
}

class Constants extends $pb.ProtobufEnum {
  static const Constants Unused = Constants._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Unused');
  static const Constants DATA_PAYLOAD_LEN = Constants._(240, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_PAYLOAD_LEN');

  static const $core.List<Constants> values = <Constants> [
    Unused,
    DATA_PAYLOAD_LEN,
  ];

  static final $core.Map<$core.int, Constants> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Constants? valueOf($core.int value) => _byValue[value];

  const Constants._($core.int v, $core.String n) : super(v, n);
}

class CriticalErrorCode extends $pb.ProtobufEnum {
  static const CriticalErrorCode None = CriticalErrorCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'None');
  static const CriticalErrorCode TxWatchdog = CriticalErrorCode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TxWatchdog');
  static const CriticalErrorCode SleepEnterWait = CriticalErrorCode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SleepEnterWait');
  static const CriticalErrorCode NoRadio = CriticalErrorCode._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NoRadio');
  static const CriticalErrorCode Unspecified = CriticalErrorCode._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Unspecified');
  static const CriticalErrorCode UBloxInitFailed = CriticalErrorCode._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UBloxInitFailed');
  static const CriticalErrorCode NoAXP192 = CriticalErrorCode._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NoAXP192');
  static const CriticalErrorCode InvalidRadioSetting = CriticalErrorCode._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'InvalidRadioSetting');
  static const CriticalErrorCode TransmitFailed = CriticalErrorCode._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TransmitFailed');
  static const CriticalErrorCode Brownout = CriticalErrorCode._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Brownout');

  static const $core.List<CriticalErrorCode> values = <CriticalErrorCode> [
    None,
    TxWatchdog,
    SleepEnterWait,
    NoRadio,
    Unspecified,
    UBloxInitFailed,
    NoAXP192,
    InvalidRadioSetting,
    TransmitFailed,
    Brownout,
  ];

  static final $core.Map<$core.int, CriticalErrorCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CriticalErrorCode? valueOf($core.int value) => _byValue[value];

  const CriticalErrorCode._($core.int v, $core.String n) : super(v, n);
}

class Routing_Error extends $pb.ProtobufEnum {
  static const Routing_Error NONE = Routing_Error._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NONE');
  static const Routing_Error NO_ROUTE = Routing_Error._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NO_ROUTE');
  static const Routing_Error GOT_NAK = Routing_Error._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GOT_NAK');
  static const Routing_Error TIMEOUT = Routing_Error._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TIMEOUT');
  static const Routing_Error NO_INTERFACE = Routing_Error._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NO_INTERFACE');
  static const Routing_Error MAX_RETRANSMIT = Routing_Error._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MAX_RETRANSMIT');
  static const Routing_Error NO_CHANNEL = Routing_Error._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NO_CHANNEL');
  static const Routing_Error TOO_LARGE = Routing_Error._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TOO_LARGE');
  static const Routing_Error NO_RESPONSE = Routing_Error._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NO_RESPONSE');

  static const $core.List<Routing_Error> values = <Routing_Error> [
    NONE,
    NO_ROUTE,
    GOT_NAK,
    TIMEOUT,
    NO_INTERFACE,
    MAX_RETRANSMIT,
    NO_CHANNEL,
    TOO_LARGE,
    NO_RESPONSE,
  ];

  static final $core.Map<$core.int, Routing_Error> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Routing_Error? valueOf($core.int value) => _byValue[value];

  const Routing_Error._($core.int v, $core.String n) : super(v, n);
}

class MeshPacket_Priority extends $pb.ProtobufEnum {
  static const MeshPacket_Priority UNSET = MeshPacket_Priority._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNSET');
  static const MeshPacket_Priority MIN = MeshPacket_Priority._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MIN');
  static const MeshPacket_Priority BACKGROUND = MeshPacket_Priority._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BACKGROUND');
  static const MeshPacket_Priority DEFAULT = MeshPacket_Priority._(64, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DEFAULT');
  static const MeshPacket_Priority RELIABLE = MeshPacket_Priority._(70, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RELIABLE');
  static const MeshPacket_Priority ACK = MeshPacket_Priority._(120, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACK');
  static const MeshPacket_Priority MAX = MeshPacket_Priority._(127, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MAX');

  static const $core.List<MeshPacket_Priority> values = <MeshPacket_Priority> [
    UNSET,
    MIN,
    BACKGROUND,
    DEFAULT,
    RELIABLE,
    ACK,
    MAX,
  ];

  static final $core.Map<$core.int, MeshPacket_Priority> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MeshPacket_Priority? valueOf($core.int value) => _byValue[value];

  const MeshPacket_Priority._($core.int v, $core.String n) : super(v, n);
}

class LogRecord_Level extends $pb.ProtobufEnum {
  static const LogRecord_Level UNSET = LogRecord_Level._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNSET');
  static const LogRecord_Level CRITICAL = LogRecord_Level._(50, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CRITICAL');
  static const LogRecord_Level ERROR = LogRecord_Level._(40, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ERROR');
  static const LogRecord_Level WARNING = LogRecord_Level._(30, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WARNING');
  static const LogRecord_Level INFO = LogRecord_Level._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INFO');
  static const LogRecord_Level DEBUG = LogRecord_Level._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DEBUG');
  static const LogRecord_Level TRACE = LogRecord_Level._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TRACE');

  static const $core.List<LogRecord_Level> values = <LogRecord_Level> [
    UNSET,
    CRITICAL,
    ERROR,
    WARNING,
    INFO,
    DEBUG,
    TRACE,
  ];

  static final $core.Map<$core.int, LogRecord_Level> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LogRecord_Level? valueOf($core.int value) => _byValue[value];

  const LogRecord_Level._($core.int v, $core.String n) : super(v, n);
}

