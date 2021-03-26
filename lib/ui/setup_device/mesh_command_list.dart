// @dart=2.9
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../application/setup_device/setup_device_bloc.dart';
import '../../domain/commands/command.dart';
import '../../domain/device_repo.dart';

import '../../services/mesh/mesh.dart';
import '../router/route_generator.dart';
part 'widgets/command_tiles.dart';

final appLogger = GetIt.I<Logger>(instanceName: 'appLogger');

// helpful  https://medium.com/flutter-community/parsing-complex-json-in-flutter-747c46655f51

/// Display single device, for Meshastic devices only,
/// Generates a list of common commands as Tiles, based on josn file
class MeshCommandListScreen extends StatelessWidget {
  final DeviceConnect deviceConnect = GetIt.I<DeviceConnect>();
  final MeshDevice device;

  ///const for immutable class
  MeshCommandListScreen({Key key, this.device}) : super(key: key);
// future: DefaultAssetBundle.of(context)
//                       .loadString("assets/json/commands.json"),

  Future<List<MeshCommand>> _loadCommands(String jsonFile) async {
    // List<MeshCommand> commands = [];
    String data = await rootBundle //DefaultAssetBundle.of(context)
        .loadString(jsonFile);
    // List<Map<String, dynamic>>
    final jsonData = json.decode(data);
    List<MeshCommand> commands =
        MeshCommandList.fromJson(jsonData as List).commands;
    return commands;
  }

  Future<List<MeshCommand>> _loadCommandGroups() async {
    // List<MeshCommand> commands = [];
    String data = await rootBundle //DefaultAssetBundle.of(context)
        .loadString("assets/json/command_groups.json");
    final jsonData = json.decode(data);
    List<MeshCommand> commands =
        MeshCommandList.fromJson(jsonData as List).commands;
    return commands;
  }

  /// Generate the tiles from json file
  Widget _buildCommandTiles(List<MeshCommand> commands, BuildContext context) {
    // bleInterface = BLEInterface(this.device);
    if (commands == null) {
      appLogger.w('commands are Null', 'app.DeviceScreen._buildCommandTiles');
      return Container(
        height: 50,
        color: Colors.amber[600],
        child: const Center(child: Text('Null commands')),
      );
    } else {
      ///Todo check for null here with meshtastic, "map called on null"
      appLogger.v('app.DeviceScreen._buildCommandTiles: Commands Found');
      return Column(
        children: commands
            ?.map((c) => CommandTile(
                command: c,
                parameterTiles: c.params.paramList
                    .map(
                      (p) => ParameterTile(
                        parameter: p,
                      ),
                    )
                    .toList(),
                // Open the command in the run page
                onRunPressed: () =>
                    Navigator.of(context).pushNamed('/meshCommandScreen',
                        arguments: MeshRouteArguments(
                            device: device,
                            // deviceConnect: deviceConnect,
                            command: c))))
            ?.toList(),
      );
    }
  }

  /// Generate the tiles from json file
  Widget _buildCommandTiles2(List<MeshCommand> commands, BuildContext context) {
    // bleInterface = BLEInterface(this.device);
    if (commands == null) {
      appLogger.w('commands are Null', 'app.DeviceScreen._buildCommandTiles');
      return Container(
        height: 50,
        color: Colors.amber[600],
        child: const Center(child: Text('Null commands')),
      );
    } else {
      appLogger.v('app.DeviceScreen._buildCommandTiles: Commands Found');
      return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: commands.length,
          itemBuilder: (BuildContext context, int index) {
            return CommandTile(
                command: commands[index],
                parameterTiles: commands[index]
                    .params
                    .paramList
                    .map(
                      (p) => ParameterTile(
                        parameter: p,
                      ),
                    )
                    .toList(),
                // Open the command in the run page
                onRunPressed: () =>
                    Navigator.of(context).pushNamed('/meshCommandScreen',
                        arguments: MeshRouteArguments(
                            device: device,
                            // deviceConnect: deviceConnect,
                            command: commands[index])));
          });
    }
  }

  /// Generate the tiles from json file
  Widget _buildCommandTiles3(List<MeshCommand> commands, BuildContext context) {
    // bleInterface = BLEInterface(this.device);
    if (commands == null) {
      appLogger.w('commands are Null', 'app.DeviceScreen._buildCommandTiles');
      return Container(
        height: 50,
        color: Theme.of(context).errorColor,
        child: const Center(child: Text('Null commands')),
      );
    } else {
      appLogger.v('app.DeviceScreen._buildCommandTiles: Commands Found');
      return GroupedListView(
          elements: commands,
          groupBy: (command) => command.group,
          groupSeparatorBuilder: (commandGroup) => Container(
                padding: const EdgeInsets.all(8.0),
                color: Theme.of(context).dividerColor,
                child: Text(commandGroup as String,
                    style: Theme.of(context).textTheme.subtitle2),
              ),
          // padding: const EdgeInsets.all(8),
          // itemCount: commands.length,
          separator: const Divider(height: 4),
          itemBuilder: (context, MeshCommand command) {
            // final command =
            //     MeshCommand.fromJson(element as Map<String, dynamic>);
            return CommandTile(
                command: command,
                parameterTiles: command.params.paramList
                    .map(
                      (p) => ParameterTile(
                        parameter: p,
                      ),
                    )
                    .toList(),
                // Open the command in the run page
                onRunPressed: () =>
                    Navigator.of(context).pushNamed('/meshCommandScreen',
                        arguments: MeshRouteArguments(
                            device: device,
                            // deviceConnect: deviceConnect,
                            command: command)));
          });
    }
  }

  /// Command top bar
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(device.name),
            actions: <Widget>[
              TextButton(
                  onPressed: () => device.disconnect(),
                  child: Text(
                    'DISCONNECT?',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .button
                        .copyWith(color: Colors.white),
                  ))
            ],
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.list)),
                Tab(icon: Icon(Icons.list_alt)),
                Tab(icon: Icon(Icons.settings)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FutureBuilder<List<MeshCommand>>(
                  future: _loadCommands(
                      'assets/json/commands.json'), //called once only?
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return _buildCommandTiles3(snapshot.data, context);
                    } else {
                      return Container(
                        child: const Center(
                          child: Text("Loading"),
                        ),
                      );
                    }
                  }),
              FutureBuilder<List<MeshCommand>>(
                  future: _loadCommands(
                      'assets/json/command_groups.json'), //called once only?
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return _buildCommandTiles3(snapshot.data, context);
                    } else {
                      return Container(
                        child: const Center(
                          child: const Text('Loading'),
                        ),
                      );
                    }
                  })
              //   ],
              // )
              ,
              const Icon(Icons.directions_bike),
            ],
          ),
        ));
  }
}
