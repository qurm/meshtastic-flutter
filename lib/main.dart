/*
Copyright 2020 Andrew Frigaard

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:logger/logger.dart';
// import 'package:logger_flutter/logger_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get_it/get_it.dart';
import 'package:wakelock/wakelock.dart';

import 'application/connect_device/connect_device_bloc.dart';
import 'application/simple_bloc_observer.dart';
import 'domain/device_repo.dart';
import 'services/bluetooth/ble_api.dart';

// import 'widgets.dart';
import 'ui/menu/drawer.dart';
import 'ui/router/route_generator.dart';
import 'ui/find_device/find_device.dart';
import 'ui/settings/log_settings.dart' as log;

//import 'ui/ble_connect.dart';

// layer model based on https://resocoder.com/2020/03/09/flutter-firebase-ddd-course-1-domain-driven-design-principles/

void main() {
  WidgetsFlutterBinding
      .ensureInitialized(); //required before running plugin code
  final sl = GetIt.instance; //sl = service locator
  //global logging instance - visible to user, do we need second instance for user?
  sl.registerSingleton<Logger>(log.appLogger, instanceName: 'appLogger');
  sl.registerSingleton<Logger>(log.userLogger, instanceName: 'userLogger');
  Bloc.observer = SimpleBlocObserver(sl.get<Logger>(instanceName: 'appLogger'));

  final deviceConnectRepository = DeviceConnect(blueAPIClient: BlueAPIClient());
  sl.registerSingleton<DeviceConnect>(deviceConnectRepository);
  sl.registerSingleton<ConnectDeviceBloc>(ConnectDeviceBloc());

  Wakelock.enable(); //force screen unlocked, for dev only

  runApp(BLEApp(router: RouteGenerator(sl.get<DeviceConnect>())));
}

class BLEApp extends StatelessWidget {
  BLEApp({Key? key, /*required*/ required this.router}) : super(key: key);
  final RouteGenerator router;
  final sl = GetIt.instance; //sl = service locator
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meshtastic Configurator',
      // theme: ThemeData(
      //   primarySwatch: Colors.green,
      // ),
      // Green color theme, based on Material green and cyan colors. light theme.
      theme: FlexColorScheme.light(scheme: FlexScheme.green).toTheme,
      // Green color theme, based on Material green and cyan colors. dark theme.
      darkTheme: FlexColorScheme.dark(scheme: FlexScheme.green).toTheme,
      // Use dark or light theme based on system setting.
      themeMode: ThemeMode.system,
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      // home: FindDevicesScreen(deviceConnect: deviceConnect),

      initialRoute: '/',
      onGenerateRoute: router.onGenerateRoute,
      onGenerateInitialRoutes: (String initialRouteName) {
        return [
          router.onGenerateRoute(RouteSettings(
            name: '/',
            // args are not used in initial page route, dont want to pass a null
            // arguments: MeshRouteArguments(
            //   device: null,
            // )
          ))
        ];
      },
    );
  }

  @override
  //required to ensure that bloc in Router gets dispose event
  void dispose() {
    router.dispose();
    //super.dispose();
  }
}
