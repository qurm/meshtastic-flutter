// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:meshtastic_app/application/find_device/find_device_bloc.dart';

import '../../application/connect_device/connect_device_bloc.dart';
import '../../application/simple_bloc_observer.dart';
import '../../domain/device_repo.dart';
import '../../services/bluetooth/ble_api.dart';
import '../../services/mesh/mesh.dart';
import '../../services/bluetooth/ble_common.dart';
// import 'widgets.dart';
import 'widgets/scan_result.dart';
import '../menu/drawer.dart';
import '../router/route_generator.dart';

/// We use the BlocListener widget in order to DO THINGS in response to state changes in our DataBloc.
/// We use the BlocBuilder widget in order to RENDER WIDGETS in response to state changes in our DataBloc.
// assert(deviceConnect != null),
/// Find Devices screen
class FindDevicesScreen extends StatelessWidget {
  const FindDevicesScreen({Key key, this.deviceConnect}) : super(key: key);

  /// BLE device repository
  final DeviceConnect deviceConnect;

  @override
  Widget build(BuildContext context) {
    final _connectDeviceBloc = GetIt.I<ConnectDeviceBloc>();
    // final _findDeviceBloc = BlocProvider.of<FindDeviceBloc>(context);
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: const Text('Find Devices'),
      ),
      body: BlocListener<FindDeviceBloc, FindDeviceState>(
        listener: (context, state) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.green,
            content: Text('${state.toString()}'),
          ));
        },
        child: RefreshIndicator(
          //onRefresh: () async => _connectDeviceBloc.add(ScanRequested()),
          onRefresh: () async => BlocProvider.of<FindDeviceBloc>(context)
              .add(const FindScanRequestedEvent()),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: <Widget>[
                BlocBuilder<FindDeviceBloc, FindDeviceState>(
                    builder: (context, state) {
                  if (state is FindCompletedRefreshState)
                  // ||                      (state is FindCompletedScan))
                  {
                    /// top list of connected devices, refreshes to shows newly connected device
                    return Column(children: <Widget>[
                      Center(
                        child: Text('List of Connected devices',
                            style: Theme.of(context).textTheme.subtitle2),
                      ),
                      ConnectedDevicesRadioTiles(
                          devices: BlocProvider.of<FindDeviceBloc>(context)
                              .connectedDevices),
                    ]);
                  }

                  /// lower list of scanned, other devices
                  /// and list of connected devices, refreshes to shows newly connected device
                  if (state is FindCompletedScanState) {
                    return Column(children: <Widget>[
                      Text('List of Connected devices',
                          style: Theme.of(context).textTheme.subtitle2),
                      ConnectedDevicesRadioTiles(
                          devices: BlocProvider.of<FindDeviceBloc>(context)
                              .connectedDevices),
                    ]);
                  }

                  /// lower list of scan, other devices
                  if (state is FindRequestedState) {
                    return Text('Scanning for Meshtastic BLE devices...',
                        style: Theme.of(context).textTheme.subtitle2);
                  } else {
                    return Text('State is NOT covered',
                        style: Theme.of(context).textTheme.subtitle2);
                  }
                }),

                Text('List of Scanned devices',
                    style: Theme.of(context).textTheme.subtitle2),
                // includes StreamBuilder, independent of bloc State
                // Stream created in FindDeviceBloc initialise.
                AllDevicesTiles(
                  connectDeviceBloc: _connectDeviceBloc,
                  devices: BlocProvider.of<FindDeviceBloc>(context).allDevices,
                  // devices: state.allDevices,
                )
              ],
            ),
          ),
        ),
      ),

      /// FAB will start (or stop) the scan
      floatingActionButton: StreamBuilder<bool>(
        stream: FlutterBlue.instance.isScanning,
        initialData: false,
        builder: (c, snapshot) {
          if (snapshot.data) {
            return FloatingActionButton(
              child: const Icon(Icons.stop),
              // onPressed: () => FlutterBlue.instance.stopScan(),
              onPressed: () async => BlocProvider.of<FindDeviceBloc>(context)
                  .add(const FindScanStopRequestedEvent()),
              backgroundColor: Colors.red,
            );
          } else {
            return FloatingActionButton(
                child: const Icon(Icons.search),
                onPressed: () async => BlocProvider.of<FindDeviceBloc>(context)
                    .add(const FindScanRequestedEvent())
                // onPressed: () => deviceConnect.startScan(4000));
                );
          }
        },
      ),
    );
  }
}

/// Widget list of ListTiles of scanned devices.
/// refreshes on demand from above FAB
/// [devices] Stream of ScannedDevice
/// [connectDeviceBloc] bloc used to trigger a connect request
class AllDevicesTiles extends StatelessWidget {
  const AllDevicesTiles({
    Key key,
    @required this.connectDeviceBloc,
    @required this.devices,
  }) : super(key: key);

  final ConnectDeviceBloc connectDeviceBloc;
  final Stream<List<ScannedDevice>> devices;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ScannedDevice>>(
      stream: devices,
      initialData: [],
      builder: (c, snapshot) => Column(
        children: snapshot.data
            .map(
              (r) => ScanResultTile(
                result: r,
                onTap: () async =>
                    connectDeviceBloc.add(ConnectPressedEvent(r.device)),
              ),
            )
            .toList(),
      ),
    );
  }
}

/// Widget list of ListTiles of connected devices.
/// refreshes 5 times, each 2s, so shows newly connected devices.
class ConnectedDevicesTiles extends StatelessWidget {
  ConnectedDevicesTiles({
    Key key,
    @required Future<List<MeshDevice>> this.devices,
  }) : super(key: key);

  final Future<List<MeshDevice>> devices;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<MeshDevice>>(
      stream: Stream.periodic(const Duration(seconds: 2))
          .take(5)
          .asyncMap((_) => devices),
      // initialData: devices,  //not needed
      // initialData: BlocProvider.of<FindDeviceBloc>(context).connectedDevices,
      builder: (c, snapshot) => Column(
        children: snapshot.data
            .map((d) => ListTile(
                  title: Text(d.name),
                  subtitle: Text(d.id.toString()),
                  trailing: StreamBuilder<BLEDeviceState>(
                    stream: d.deviceState,
                    initialData: BLEDeviceState.disconnected,
                    builder: (c, snapshot) {
                      /// list connected devices with OPEN buttons
                      if (snapshot.data == BLEDeviceState.connected) {
                        return UseDeviceButton(d: d);
                      }
                      return Text(snapshot.data.toString());
                    },
                  ),
                ))
            .toList(),
      ),
    );
  }
}

/// Widget list of ListTiles of connected devices.
/// refreshes 5 times, each 2s, so shows newly connected devices.
class ConnectedDevicesRadioTiles extends StatefulWidget {
  ConnectedDevicesRadioTiles({
    Key key,
    @required Future<List<MeshDevice>> this.devices,
  }) : super(key: key);

  final Future<List<MeshDevice>> devices;

  @override
  _ConnectedDevicesRadioTilesState createState() =>
      _ConnectedDevicesRadioTilesState();
}

class _ConnectedDevicesRadioTilesState
    extends State<ConnectedDevicesRadioTiles> {
  String _value = '';
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<MeshDevice>>(
      stream: Stream.periodic(const Duration(seconds: 2))
          .take(5)
          .asyncMap((_) => widget.devices),
      // initialData: devices,  //not needed
      // initialData: BlocProvider.of<FindDeviceBloc>(context).connectedDevices,
      builder: (c, snapshot) {
        if (snapshot.data != null) {
          return Column(
            children: snapshot.data
                .map((d) => RadioListTile(
                      value: d.name,
                      groupValue: _value,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Text(d.name)),
                          Icon(Icons.bluetooth_connected,
                              color: Theme.of(context)
                                  .iconTheme
                                  .color
                                  .withOpacity(0.9)),
                        ],
                      ),
                      subtitle: Text(
                        d.id.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .apply(color: Colors.green),
                      ),
                      onChanged: (String index) =>
                          setState(() => _value = index),
                      secondary: StreamBuilder<BLEDeviceState>(
                        stream: d.deviceState,
                        initialData: BLEDeviceState.disconnected,
                        builder: (c, snapshot) {
                          /// list connected devices with OPEN buttons
                          if (snapshot.data == BLEDeviceState.connected) {
                            return UseDeviceButton(d: d);
                          } else {
                            return const NoDeviceButton();
                          }
                          // return Text(snapshot.data.toString());
                        },
                      ),
                    ))
                .toList(),
          );
        } else {
          return Column(children: [
            Text('No Connected devices',
                style: Theme.of(context).textTheme.subtitle2)
          ]);
        }
      },
    );
  }
}

class UseDeviceButton extends StatelessWidget {
  const UseDeviceButton({Key key, this.d}) : super(key: key);
  final MeshDevice d;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: const Text('SETUP'),
        onPressed: () =>
            Navigator.of(context).pushNamed('/meshCommandListScreen',
                arguments: MeshRouteArguments(device: d
                    // deviceConnect,
                    )));
  }
}

class NoDeviceButton extends StatelessWidget {
  const NoDeviceButton({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(child: const Text('N/A'), onPressed: () => null);
  }
}
