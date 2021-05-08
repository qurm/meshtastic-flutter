
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../application/connect_device/connect_device_bloc.dart';
import '../../application/find_device/find_device_bloc.dart';
import '../../application/setup_device/setup_device_bloc.dart';
import '../../domain/commands/command.dart';
import '../../domain/device_repo.dart';

import '../../services/mesh/mesh.dart';
import '../setup_device/mesh_command.dart';
import '../setup_device/mesh_command_list.dart';
import '../find_device/find_device.dart';

// see https://resocoder.com/2019/04/27/flutter-routes-navigation-parameters-named-routes-ongenerateroute/

///
///bloc creation
/// 1. DeviceConnect repository in main() (no device)
/// 2. ConnectDeviceBloc in main - lazy
/// 3. Routegenerator created (inject DeviceConnect Repository)
/// 4. was SetupDeviceBloc - lazy
/// 5. FindDeviceBloc in first Home page route (not lazy)
/// 5. Try pattern SetupDeviceBloc in first Mesh command page route (not lazy)
/// n. FindDeviceBloc calls a connectDeviceBloc.add(ConnectPressed(device));

class RouteGenerator {
  // pattern using Routes to set scope for blocs
  // see https://bloclibrary.dev/#/recipesflutterblocaccess?id=generated-route-access
  RouteGenerator(this._deviceConnect) {
    // _initbloc;
    sl.registerSingleton<SetupDeviceBloc>(SetupDeviceBloc());
  }

  final DeviceConnect _deviceConnect;
  final sl = GetIt.instance; //sl = service locator

  // SetupDeviceBloc _setupDeviceBloc;

  //TODO - try to start the bloc events in the Command List svcreen.

  // final _setupDeviceBloc = SetupDeviceBloc();

  // Future<void> _initbloc() async {
  //   await Future.delayed(Duration.zero);
  //   _setupDeviceBloc = SetupDeviceBloc(
  //       connectDeviceBloc: BlocProvider.of<ConnectDeviceBloc>(context));
  // }

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        if (args is MeshRouteArguments) {
          return MaterialPageRoute(

              /// Start the Find Bloc immediately and raise FindStarted event
              builder: (_) => BlocProvider<FindDeviceBloc>(
                  lazy: false,
                  create: (context) =>
                      FindDeviceBloc()..add(const FindStartedEvent()),
                  child: const FindDevicesScreen()));
        }
        return _errorRoute(settings.name);

      // case '/userLogScreen':
      //   // return MaterialPageRoute(builder: (_) => UserLogScreen());
      //   return MaterialPageRoute(builder: (_) => LogConsole.open(context));

      // case '/meshScreen':
      //   // Old Device screen from Flutterblue, see mesh_device.dart
      //   // Validation of correct data type
      //   if (args is MeshRouteArguments) {
      //     return MaterialPageRoute(
      //       builder: (_) => MeshScreen(
      //         device: args.device,
      //         deviceConnect: sl.get<DeviceConnect>(),
      //       ),
      //     );
      //   }
      //   // If args is not of the correct type, return an error page.
      //   // You can also throw an exception while in development.
      //   return _errorRoute(settings.name);
      case '/meshCommandListScreen':
        // Validation of correct data type
        if (args is MeshRouteArguments) {
          return MaterialPageRoute(
              //TODO creating it twice??
              builder: (_) => BlocProvider.value(
                    value: sl.get<SetupDeviceBloc>()
                      // builder: (_) => BlocProvider<SetupDeviceBloc>(
                      //       lazy: false,
                      //       create: (context) => SetupDeviceBloc()
                      ..add(DeviceStartedEvent(args.device)),
                    child: MeshCommandListScreen(
                      device: args.device,
                      // deviceConnect: sl.get<DeviceConnect>(),
                      // deviceConnect: args.deviceConnect,
                    ),
                  ));
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute(settings.name);
      case '/meshCommandScreen':
        // Validation of correct data type
        if (args is MeshRouteArguments) {
          return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                value: sl.get<SetupDeviceBloc>(),
                // BlocProvider.value(
                //     value: _setupDeviceBloc,
                child: MeshCommandScreen(
                  device: args.device,
                  // deviceConnect: sl.get<DeviceConnect>(),
                  command: args.command,
                )),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute(settings.name);
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute(settings.name);
    }
  }

  static Route<dynamic> _errorRoute(String? route) {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Navigation Error'),
        ),
        body: Center(
          child: Text('Error - Route not found $route'),
        ),
      );
    });
  }

  void dispose() {
    sl.get<SetupDeviceBloc>().close();
  }
}

/// used for Mesh related screens, MeshCommand etc
class MeshRouteArguments {
  final MeshDevice device;
  // final DeviceConnect deviceConnect;
  final MeshCommand command;
  MeshRouteArguments({required this.device, required this.command});
}
