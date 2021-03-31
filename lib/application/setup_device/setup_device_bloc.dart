// @dart=2.9
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../domain/commands/command.dart';
import '../../domain/commands/command_failure.dart';
import '../../domain/device_repo.dart';
import '../../services/bluetooth/ble_api.dart';
import '../../services/mesh/mesh.dart';
import '../connect_device/connect_device_bloc.dart';

part 'setup_device_bloc.freezed.dart';
part 'setup_device_event.dart';
part 'setup_device_state.dart';

/// Setup device bloc initialises & sets preferences/config of the mesh device.S
///
/// and sends any commands that are requested.
/// Used by mesh_command and "normal" startup
/// Uses [ConnectDeviceBloc] to listen to the selected device,
/// so that state changes can update Mesh interface
///
/// AF 11/01/2021 Now is intitialised in the [RouteGenerator]
/// This may not need a bloc, just a cubit
@injectable
class SetupDeviceBloc extends Bloc<SetupDeviceEvent, SetupDeviceState> {
  // SetupDeviceBloc({this.connectDeviceBloc}) : super(DeviceInitial()) {
  SetupDeviceBloc() : super(const DeviceInitialState());

  //cannot run the DeviceStarted event on bloc create, as _device not initialised.:
  // add(DeviceStarted());

  final ConnectDeviceBloc connectDeviceBloc = GetIt.I<ConnectDeviceBloc>();
  final DeviceConnect _connectFacade = GetIt.I<DeviceConnect>();
  MeshDevice _device;
  StreamSubscription<MeshtasticReceive> _meshSubscription;
  StreamSubscription _connectDeviceSubscription;
  BLEInterface _meshInterface;

  @override
  Stream<SetupDeviceState> mapEventToState(
    SetupDeviceEvent event,
  ) async* {
    // Device is conected, needs Mesh startup
    if (event is DeviceStartedEvent) {
      yield const DeviceInProgressState();
      try {
        /// do this first so can check is connected
        _connectDeviceSubscription = connectDeviceBloc.stream.listen((state) {
          //call back for connect changes
          //TEMP
          if (state is ConnectedState) {
            _meshInterface.connected();
          }
          if (state is DeviceOfflineState) {
            _meshInterface.disconnected();
          }
          appLogger.d('connectDeviceBloc state: ${state.toString()} ');
        });

        // creates the BLEinterface
        _device = event.device;
        _meshInterface = await _connectFacade.meshServiceStart(_device);
        _meshSubscription = _meshInterface.meshEvents.listen((event) {
          add(DeviceEventEvent(event));
        });

        yield DeviceSuccessState('Connected to ${_device.id}');
      } catch (e) {
        yield const DeviceFailureState(CommandFailure.unexpected());
        appLogger.d('DeviceStarted event  unexpected falure: $e ');
      }
    }

    if (event is DeviceEventEvent) {
      appLogger.i('SetupDevice: Mesh Event ${event.meshEvent}');
    }

    /// Command submitted by form/application, call setPreference
    if (event is DeviceCommandEvent) {
      yield const DeviceInProgressState();
      try {
        // set Preference and write to device
        String msg;
        // appLogger.i(
        //     'SetupDevice: setPreferenceList ${event.meshCommand.params.paramList}');
        final prefMap = {
          for (var p in event.meshCommand.params.paramList)
            p.id as String: p.value as String
        };
        appLogger.i('SetupDevice: setPreferenceList ${prefMap}');
        final possibleFailure =
            _connectFacade.bleInterface.setPreferenceList(prefMap);

        // final possibleFailure = _connectFacade.bleInterface.setPreference(
        //     event.meshCommand.command,
        //     event.meshCommand.params.paramList[0].value);
        //TODO - handle writeConfig failures also
        if (possibleFailure.isRight()) {
          await _connectFacade.bleInterface.localNode
              .writeConfig(); //Now on Node class
          // TODO temp disable
          // msg = await _connectFacade.bleInterface.getConfig();
          msg = 'Config sent to devices';
        }
        yield possibleFailure.fold(
          (failure) => DeviceFailureState(failure),
          (_) => DeviceSuccessState(msg),
        );

        // do anything else,, like read info?
        // _connectFacade.bleInterface.read();

      } catch (e) {
        yield const DeviceFailureState(CommandFailure.unexpected());
        appLogger.e('SetupDevice: event unexpected falure: $e ');
      }
    }
  }

  @override
  Future<void> close() {
    _meshSubscription?.cancel();
    return super.close();
  }
}
