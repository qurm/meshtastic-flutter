
import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/connect_failure.dart';
import '../../domain/device_repo.dart';
import '../../services/bluetooth/ble_api.dart';
import '../../services/mesh/mesh.dart';
import '../connect_device/connect_device_bloc.dart';

part 'find_device_event.dart';
part 'find_device_state.dart';
part 'find_device_bloc.freezed.dart';

// run this at terminal after changes to generate freezed code
//  flutter pub run build_runner watch --delete-conflicting-outputs

/// Purpose of [FindDeviceBloc] is to manage scanning and selecting Mesh devices.
///
/// Use [ConnectDeviceBloc] to connect to the selected device, has a reference
/// and listened to here so that connection changes can update Find lists.
/// See [setup_device] bloc for already connected device
/// Application logic, and deals with UI and domain layers
/// incoming events are transformed, yielded as States
class FindDeviceBloc extends Bloc<FindDeviceEvent, FindDeviceState> {
  FindDeviceBloc() : super(const FindInitialState()) {
    _connectRepo = GetIt.I<DeviceConnect>();
    //set this early, so Scan list can show before any event button pressed
    _allDevices = _connectRepo.scanResults;

    _appLogger!.i('FindDeviceBloc: initiasing.');
    _connectDeviceSubscription = connectDeviceBloc.stream.listen((state) {
      if (state is ConnectedState) {
        // show the new connected list, and store to share prefs
        add(const FindRefreshRequestedEvent());
        // TODO not using the saved device yet
        _saveDevice(state.device.id);
      }
    });
    // moved this to the FindStarted event below
    // _initialiseBloc();
  }

  late DeviceConnect _connectRepo;
  final ConnectDeviceBloc connectDeviceBloc = GetIt.I<ConnectDeviceBloc>();
  // StreamSubscription _periodicSubscription; //problematic, keeps running in bloc
  StreamSubscription? _connectDeviceSubscription;

  // List<MeshDevice> connectedDevices = [];
  String? _lastDevice;

  /// settings - will attempt reconnect to last known device.
  bool findDeviceAutoReconnect = true;
  final Logger? _appLogger = GetIt.I<Logger>(instanceName: 'appLogger');
  Stream<List<ScannedDevice>>? _allDevices;

  Future<void> _initialiseBloc() async {
    final prefs = await SharedPreferences.getInstance();
    _lastDevice = prefs.getString('lastGoodDevice');
    // try to connect to this device
  }

  Future<void> _saveDevice(String id) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('lastGoodDevice', id);
  }

  //these were State properties, but moved to bloc property, simplifies.

  /// pass through to the repo
  Future<List<MeshDevice>> get connectedDevices async {
    return await _connectRepo.connectedDevices3;
  }

  Stream<List<ScannedDevice>>? get allDevices {
    return _allDevices;
  }

  @override
  Stream<FindDeviceState> mapEventToState(
    FindDeviceEvent event,
  ) async* {
    /// on Startup, first connections.
    if (event is FindStartedEvent) {
      final _prefs = await SharedPreferences.getInstance();
      _lastDevice = _prefs.getString('lastGoodDevice');
      yield const FindRequestedState();
      try {
        if (findDeviceAutoReconnect && _lastDevice!.isNotEmpty) {
          // try to connect to lastGoodDevice
          _appLogger!
              .i('FindStarted: try connecting to last device $_lastDevice');
          // TODO check bluetooth is running -and repo is initial.  This is first call to BLE

          // scan devices, find in scanResults, and connect
          // get connected devices, first?
          final deviceEither = await _connectRepo.scanConnect(_lastDevice);

          if (deviceEither.isRight()) {
            var device = deviceEither.getOrElse(() => null)!;
            _appLogger!.i('FindStarted: now connecting to device $device');
            connectDeviceBloc.add(ConnectPressedEvent(device));
            // replace with bloc property
            // connectedDevices = await _connectRepo.connectedDevices3;
            //then
          }
          final _devices = await connectedDevices;
          yield deviceEither.fold((failure) => FindFailureState(failure),
              (r) => FindCompletedRefreshState(_devices));
        }
        // after a connect attempt, rescan so that device is removed from list:
        add(const FindScanRequestedEvent());
      } catch (_) {
        rethrow;
        //handle Failures from the repo - i.e. BLE off, no location services etc?

      }
    }
    ;
    if (event is FindScanRequestedEvent) {
      yield const FindRequestedState();
      try {
        await _connectRepo.startScan(4000);
        //can only listen once - try on bloc initialise?
        // _allDevices = _connectRepo.scanResults;
        // _appLogger
        //     .d('FindScanRequestedEvent scan list has: ${_allDevices.length}');

        //  final Stream<List<ScannedDevice>> allDevices = _connectRepo.scanResults;

        // final _connectedDevices = await _connectRepo.connectedDevices3;
        // final _connectedDevices = await connectedDevices;

        // refresh this list too.  Best to wait for a Connect event
        // connectedDevices = await _connectRepo.connectedDevices3;

        // single event stream - no refresh
        // final Stream<List<MeshDevice>> connectedDevices =
        //     Stream.fromFuture(_connectRepo.connectedDevices3);
        // Tried the periodic stream here, but better in the UI, so only runs when needed
        // Stream. .periodic(Duration(seconds: 12))
        //       .asyncMap((_) async => _connectRepo.connectedDevices3);

        // yield FindCompletedScan(allDevices, await connectedDevices);
        yield const FindCompletedScanState();

        // } on PlatformException catch (err) {
        //     // PlatformException when device is already connected via another app
        //     // PlatformException (PlatformException(discover_services_error,
        //     _appLogger.e(
        //         'connectedDevices3: handled PlatformException ${err} from ${d.id}');
      } catch (_) {
        rethrow;
        //handle Failures from the repo - i.e. BLE off, no location services etc?
      }
    }
    ;
    if (event is FindScanStopRequestedEvent) {
      yield const FindRequestedState();
      try {
        await _connectRepo.stopScan();
        // connectedDevices = await _connectRepo.connectedDevices3;
        //what to yield in this case ?  a Failure ?
        // final Stream<List<ScannedDevice>> allDevices =
        //     _connectRepo.scanResults;
        // final List<ScannedDevice>> sr[] = [];
        // final allDevices = Stream.fromIterable([] as List<ScannedDevice>>);
        // yield CompletedScan(Stream.fromIterable([] as List<ScannedDevice>>));
        // yield FindCompletedScan(Stream.empty(), await connectedDevices);
        _allDevices = const Stream.empty();
        yield const FindCompletedScanState();
      } catch (_) {
        rethrow;
        //handle Failures from the repo - i.e. BLE off, no location services etc?
      }
    }
    //TODO - dont use this, only SCAN, used after a new connection - see listen to COnnectDeviceBloc
    if (event is FindRefreshRequestedEvent) {
      yield const FindRequestedState();
      try {
        // connectedDevices = await _connectRepo.connectedDevices3;
        yield FindCompletedRefreshState(await connectedDevices);
      } catch (_) {
        rethrow;
        //handle Failures from the repo - i.e. BLE off, no location services etc?
      }
    }
  }
}
