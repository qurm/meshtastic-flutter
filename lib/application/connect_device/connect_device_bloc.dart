// @dart=2.9
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
import 'package:meshtastic_app/services/bluetooth/ble_common.dart';
// import 'package:meshtastic_app/bloc/find_device/bloc/find_device_bloc.dart';
import 'package:meta/meta.dart';
import 'package:get_it/get_it.dart';

import '../../domain/connect_failure.dart';
import '../../domain/device_repo.dart';
import '../../services/bluetooth/ble_api.dart';
import '../../services/mesh/mesh.dart';

part 'connect_device_bloc.freezed.dart';
part 'connect_device_event.dart';
part 'connect_device_state.dart';

// run this at terminal after changes to generate freezed code:
// flutter pub run build_runner watch --delete-conflicting-outputs

/// ConnectDevice Bloc
/// Purpose of this bloc is to manage BLE connection to the selected device
/// chosen in [FindDeviceBloc] and providing connection state globally.
/// See [setup_device] bloc for already connected device
/// Application logic, and deals with UI and domain layers
/// incoming events are transformed, yielded as States
/// use of timer: https://stackoverflow.com/questions/61891062/flutter-bloc-using-timer-to-refetch-data

class ConnectDeviceBloc extends Bloc<ConnectDeviceEvent, ConnectDeviceState> {
  ConnectDeviceBloc() : super(const ConnectDeviceState.initial());

  /// BLE device repository
  DeviceConnect connectRepo = GetIt.I<DeviceConnect>();
  StreamSubscription _deviceSubscription;
  // StreamSubscription _periodicSubscription;
  List<MeshDevice> connectedDevices = [];

  // ConnectDeviceBloc(this.connectRepo)
  //   : assert(connectRepo != null),
  // super(ConnectDeviceState.initial())

  // @override  nothing to override here
  ConnectDeviceState get initialState => const ConnectDeviceState.initial();

  @override
  Stream<ConnectDeviceState> mapEventToState(
    ConnectDeviceEvent event,
  ) async* {
    if (event is ConnectPressedEvent) {
      yield const ConnectingState();
      try {
        // final connectedDevices = await connectRepo.connectedDevices3;
        await event.device.connect();
        yield ConnectedState(event.device);
        add(const ConnectCompletedEvent());
        //then the UI can refresh to show the connected device(s)

        // on BLE device change state, raise a ConnectStateChanged event in this bloc
        // BLEDeviceState { disconnected, connecting, connected, disconnecting }
        _deviceSubscription = event.device.deviceState.listen((status) {
          //call back action:
          add(ConnectStateChangedEvent(status));
        });
      } catch (e) {
        rethrow;
        //handle Failures from the repo - i.e. BLE off, no location services etc?
      }
    }

    if (event is ConnectCompletedEvent) {
      try {
        //anything to do?        }
      } catch (e) {
        //handle Failures from the repo - i.e. BLE off, no location services etc?
        rethrow;
      }
    }

    if (event is ConnectStateChangedEvent) {
      // yield Requested();
      // / BLEDeviceState { disconnected, connecting, connected, disconnecting }
      try {
        switch (event.deviceState) {
          case BLEDeviceState.disconnecting:
            yield const DeviceOfflineState();
            break;
          case BLEDeviceState.disconnected:
            yield const DeviceOfflineState();
            break;
          case BLEDeviceState.connecting:
            // yield DeviceOffline();
            break;
          //resume after brief interruption, or...
          case BLEDeviceState.connected:
            // yield Connected(event.device);
            break;
        }
      } catch (e) {
        //handle Failures from the repo - i.e. BLE off, no location services etc?
        rethrow;
      }
    }
  }

  @override
  Future<void> close() {
    _deviceSubscription?.cancel();
    return super.close();
  }
}
// TODO: implement mapEventToState
/// use Task() from dartz to wrap around Future<Either<Failure, Unit>>
// see pattern at https://resocoder.com/2019/12/14/functional-error-handling-in-flutter-dart-2-either-task-fp/

/// This below is the ResoCoder pattern - very abstract
// yield* event.map(
//   // AF scan not important now, as can depend on already paired devices for Mesht
//   scan: (e) async* {
//     // converts the Future into a Task
//     final userOption = await Task(() => connectRepo.scan())
//         // execute function above, catches exceptions into Left
//         .attempt()
//         // results in a Either<Failure, Unit>
//         .map(
//           // AF: do we need all of this, as connect is Either<Failure, Unit>:
//           // Grab only the *left* side of Either<Object, Post>
//           (either) => either.leftMap((obj) {
//             try {
//               // Cast the Object into a Failure
//               return obj as ConnectFailure;
//             } catch (e) {
//               // 'rethrow' the original exception
//               throw obj;
//             }
//           }),
//         )
//         .run();
//     // AF here want to update the Either<, R>, but what with ?
//     // .then((value) => ());
//     // .then((value) => ConnectDeviceState.deviceknown());

//     // yield userOption.fold(
//     //   () => const ConnectFailure.cancelledByUser(),
//     //   (_) => const ConnectDeviceState.deviceknown(),
//     // );
//   },
//   connect: (e) async* {},
//   //   //final userOption = await connectRepo.connect(deviceAddress: null);
//   //   DeviceAddress device; // = "ABCD"; //.cast<DeviceAddress>();
//   //   final userOption = await Task(() => connectRepo.connect(device))
//   //       .attempt()
//   //       .map(
//   //         (either) => either.leftMap((obj) {
//   //           try {
//   //             ConnectDeviceState.nodevice();
//   //             // Cast the Object into a Failure
//   //             return obj as ConnectFailure;
//   //           } catch (e) {
//   //             // 'rethrow' the original exception
//   //             throw obj;
//   //           }
//   //         }),
//   //       )
//   //       .run()
//   //       .then((value) => const ConnectDeviceState.deviceknown());
//   //   // yield userOption.fold(
//   //   //   () => const ConnectDeviceState.nodevice(),
//   //   //   (_) => const ConnectDeviceState.deviceknown(),
//   //   // );
//   // },

//   /// initial - try to get current connected devices list first
//   initialise: (e) async* {
//     try {
//       // final deviceList = await connectRepo.connectedDevices;
//       // yield DeviceKnown(deviceList); //not the right State?  Reconnect?

//       //todo if one device in list, then auto-connect, get Services
//       //final deviceList = await connectRepo.connectedServices;
//       final deviceList = await connectRepo.scan;
//       yield DeviceKnown(deviceList); //not the right State?  Reconnect?

//     } catch (_) {
//       //State is NoDevice, and the Failure is noDevice - may simplify later
//       yield NoDevice(ConnectFailure.noDevice());
//     }
//   },
// );
