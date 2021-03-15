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
import '../../services/ble_api.dart';
import '../connect_device/connect_device_bloc.dart';

part 'find_device_event.dart';
part 'find_device_state.dart';
part 'find_device_bloc.freezed.dart';

// run this at terminal after changes to generate freezed code
//  flutter pub run build_runner watch --delete-conflicting-outputs

/// Purpose of this [FindDeviceBloc] is to manage getting a list of Mesh devices
/// Use [ConnectDeviceBloc] to connect to the selected device, has a reference
/// and listened to here so that connection changes can update Find lists.
/// See [setup_device] bloc for already connected device
/// Application logic, and deals with UI and domain layers
/// incoming events are transformed, yielded as States

class FindDeviceBloc extends Bloc<FindDeviceEvent, FindDeviceState> {
  FindDeviceBloc() : super(const FindInitialState()) {
    _connectRepo = GetIt.I<DeviceConnect>();
    _connectDeviceSubscription = connectDeviceBloc.listen((state) {
      if (state is ConnectedState) {
        // show the new connected list, and store to share prefs
        add(const FindRefreshRequestedEvent());
        // TODO
        _saveDevice(state.device.id);
      }
    });
    // moved this to the FindStarted event below
    // _initialiseBloc();
  }
  DeviceConnect _connectRepo;
  final ConnectDeviceBloc connectDeviceBloc = GetIt.I<ConnectDeviceBloc>();
  // StreamSubscription _periodicSubscription; //problematic, keeps running in bloc
  StreamSubscription _connectDeviceSubscription;

  // List<MeshDevice> connectedDevices = [];
  String _lastDevice;
  final _appLogger = GetIt.I<Logger>(instanceName: 'appLogger');
  Stream<List<ScannedDevice>> _allDevices;

  Future<void> _initialiseBloc() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    _lastDevice = prefs.getString('lastGoodDevice');
    // try to connect to this device
  }

  Future<void> _saveDevice(String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('lastGoodDevice', id);
  }

  //these were State properties, but moved to bloc property, simplifies.

  /// pass  throug to the repo
  Future<List<MeshDevice>> get connectedDevices async {
    return await _connectRepo.connectedDevices3;
  }

  Stream<List<ScannedDevice>> get allDevices {
    return _allDevices;
  }

  @override
  Stream<FindDeviceState> mapEventToState(
    FindDeviceEvent event,
  ) async* {
    // TODO: implement mapEventToState
    /// on Start, try to connect to lastGoodDevice
    if (event is FindStartedEvent) {
      final _prefs = await SharedPreferences.getInstance();
      _lastDevice = _prefs.getString('lastGoodDevice');
      yield const FindRequestedState();
      try {
        if (_lastDevice.isNotEmpty) {
          _appLogger
              .i('FindStarted: try connecting to last device $_lastDevice');
          // TODO check bluetooth is running -and repo is initial.  This is first call to BLE

          // scan devices
          // find in scanResults, and connect
          // get connected devices, first?
          final deviceEither = await _connectRepo.scanConnect(_lastDevice);

          if (deviceEither.isRight()) {
            var device = deviceEither.getOrElse(() => null);
            _appLogger.i('FindStarted: now connecting to device $device');
            connectDeviceBloc.add(ConnectPressedEvent(device));
            // replace with bloc property
            // connectedDevices = await _connectRepo.connectedDevices3;
            //then
          }
          final _devices = await connectedDevices;
          yield deviceEither.fold((failure) => FindFailureState(failure),
              (r) => FindCompletedRefreshState(_devices));
          // after a connect, rescan so that device is removed from list:
          add(const FindScanRequestedEvent());

          /// AF tried to get this working, but above is simpler and adequate
          /// converts the Future into a Task
          // final userOption =
          // await Task(() => _connectRepo.scanConnect(_lastDevice))
          //     // execute function above, catches exceptions into Left
          //     .attempt()
          //     // results in a Either<Failure, Unit>
          //     .map(
          //       // AF: do we need all of this, as connect is Either<Failure, Unit>:
          //       // Grab only the *left* side of Either<Object, Post>
          //       (either) => either.leftMap((obj) {
          //         try {
          //           // Cast the Object into a Failure
          //           return obj as ConnectFailure;
          //         } catch (e) {
          //           // 'rethrow' the original exception
          //           throw obj;
          //         }
          //       }),
          //     )
          //     .run();
          // // AF here want to update the Either<, R>, but what with ?
          // // .then((value) => ());
          // .then((value) => connectDeviceBloc.add(ConnectPressed(r));

          // yield userOption.fold(
          //   () => const ConnectFailure.cancelledByUser(),
          //   (_) => const ConnectDeviceState.deviceknown(),
          // );
        }
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
        //can only listen once
        _allDevices = _connectRepo.scanResults;
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
        // yield CompletedScan(allDevices);
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
