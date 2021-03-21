// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../application/setup_device/setup_device_bloc.dart';
import '../../domain/commands/command.dart';
import '../../domain/device_repo.dart';
import '../../services/bluetooth/bluetooth.dart';
import '../../services/mesh/mesh.dart';
import '../menu/drawer.dart';
import 'mesh_command_list.dart';

var appLogger = GetIt.I<Logger>(instanceName: 'appLogger');

/// Display single command, called from selection on Command list
/// as Card using [MeshCommandForm] with submit button
class MeshCommandScreen extends StatelessWidget {
  final DeviceConnect deviceConnect = GetIt.I<DeviceConnect>();
  final MeshDevice device;
  final MeshCommand command;

  ///const for immutable class
  MeshCommandScreen({Key key, this.device, this.command})
      : assert(device != null),
        super(key: key);

  /// Generate the tiles from json file
  Widget _buildCommandCard(MeshCommand command, BuildContext context) {
    // bleInterface = BLEInterface(this.device);
    if (command == null) {
      appLogger.w('command is Null', 'app.DeviceScreen._buildCommandCard');
      return Container(
        height: 50,
        color: Colors.amber[600],
        child: const Center(child: Text('Null command')),
      );
    } else {
      appLogger.v('app.DeviceScreen._buildCommandTiles: Commands Found');
      return Column(children: [
        MeshCommandForm(
            command: command,
            onRunPressed: () {
              BlocProvider.of<SetupDeviceBloc>(context).add(
                DeviceCommandEvent(command),
              );
            })
      ]);
    }
  }

  /// Command top bar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text(device.name),
        actions: <Widget>[
          FlatButton(
              onPressed: null, //onPressed,
              child: Text('BACK BUTTON?',
                  style: Theme.of(context).primaryTextTheme.button
                  // .copyWith(color: Colors.white),
                  ))
        ],
      ),
      body: BlocListener<SetupDeviceBloc, SetupDeviceState>(
        listener: (context, state) {
          if (state is DeviceSuccessState) {
            showDialog(
              context: context,
              builder: (dialogContext) {
                return AlertDialog(
                    title: const Text('Preferences from Device:'),
                    content: Text(state.message),
                    actions: <Widget>[
                      // usually buttons at the bottom of the dialog
                      FlatButton(
                          child: const Text('Close'),
                          onPressed: () {
                            Navigator.of(dialogContext).pop();
                            // Navigator.pop(context);
                          }),
                      FlatButton(
                          child: const Text('Copy'),
                          onPressed: () {
                            Clipboard.setData(
                                ClipboardData(text: state.message));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              // backgroundColor: Colors.green,
                              content: Text('Copied to Clipboard}'),
                            ));
                          })
                    ]);
              },
            );
          }
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            // backgroundColor: Colors.green[100],
            content: Text('SetupDeviceState ${state.toString()}'),
          ));
        },
        // uses listview here to allow scrollable, avoids overflow on pop-up keyboard
        child: ListView(
          children: <Widget>[
            _buildCommandCard(command, context),
          ],
        ),
      ),
    );
  }
}
