/// List of [MeshCommand], Data object, used with [CommandTile] to build Command list UI
/// should be in the domain layer?
class MeshCommandList {
  final List<MeshCommand> commands;

  MeshCommandList({
    this.commands,
  });

  factory MeshCommandList.fromJson(List<dynamic> parsedJson) {
    List<MeshCommand> commands = new List<MeshCommand>();
    commands = parsedJson
        .map((i) => MeshCommand.fromJson(i as Map<String, dynamic>))
        .toList();
    return new MeshCommandList(commands: commands);
  }

  List<MeshCommand> fromJson2(List<dynamic> parsedJson) {
    List<MeshCommand> commands = new List<MeshCommand>();
    commands = parsedJson
        .map((i) => MeshCommand.fromJson(i as Map<String, dynamic>))
        .toList();
    return commands;
  }
}

/// Data object, used with [CommandTile] to build Command list UI
class MeshCommand {
  final int id;
  final String group;
  final String command;
  final String commandDescription;
  // final List<MeshCommandParameter> params;
  final MeshCommandParameterList params;

  MeshCommand(
      {this.id,
      this.group,
      this.command,
      this.commandDescription,
      this.params});

  factory MeshCommand.fromJson(Map<String, dynamic> json) {
    return MeshCommand(
      id: json['id'] as int,
      group: (json['group'] ?? 'Ungrouped') as String,
      command: json['command'] as String,
      commandDescription: json['commandDescription'] as String,
      params: new MeshCommandParameterList.fromJson(
          json['params'] as List<dynamic>),
    );
  }
}

/// Data object, list of children of [MeshCommand],
/// used with [ParameterTile] to build Command list UI
/// extends Iterable<MeshCommandParameter>
class MeshCommandParameterList {
  final List<MeshCommandParameter> paramList;

  MeshCommandParameterList({
    this.paramList,
  });

  factory MeshCommandParameterList.fromJson(List<dynamic> parsedJson) {
    List<MeshCommandParameter> paramList = new List<MeshCommandParameter>();
    paramList = parsedJson
        .map((i) => MeshCommandParameter.fromJson(i as Map<String, dynamic>))
        .toList();
    return new MeshCommandParameterList(paramList: paramList);
  }
}

/// Data object,child of [MeshCommand],
/// used with [ParameterTile] to build Command list UI
///
/// "id": "wait_bluetooth_secs",
/// "pValue": "28800",
/// "pDescription": "Time (s)",
/// "pDefault": "60",
/// "pType": "bool"    optional, default 'int'
/// "pMax": 28800,    optional, default 32, max string length
/// "pMin": 60,       optional, default 0
/// "pEdit": "false"    optional, default true, can edit?
/// "pHide": "true"    optional, default false, can edit?
class MeshCommandParameter {
  final String id;
  String value; //editable by user
  final String description;
  final String defaultValue;
  final String type;
  final int max;
  final int min;
  final bool editable;
  final bool visible;
  // add callback function

  MeshCommandParameter(
      {this.id,
      this.value,
      this.description,
      this.defaultValue,
      this.type,
      this.max,
      this.min,
      this.editable,
      this.visible});

  factory MeshCommandParameter.fromJson(Map<String, dynamic> json) {
    return MeshCommandParameter(
      id: json['id'] as String,
      value: json['pValue'] as String,
      description: json['pDescription'] as String,
      defaultValue: json['pDefault'] as String,
      type: (json['pType'] ?? 'int') as String,
      max: (json['pMax'] ?? 32) as int,
      min: (json['pMin'] ?? 0) as int,
      editable: isBool((json['pEdit'] ?? 'true') as String),
      visible: isBool((json['pVisible'] ?? 'true') as String),
    );
  }
}

bool isNumericInteger(String string) {
  // Null or empty string is not a number
  if (string == null || string.isEmpty) {
    return false;
  }
  // Try to parse input string to number.
  // Use int.tryParse if you want to check integer only.
  // Use double.tryParse if you want to check double only.
  final number = int.tryParse(string);

  if (number == null) {
    return false;
  }
  return true;
}

/// returns true or false based on any string
bool isBool(String string) {
  // when strict then only [1, true] return true
  bool strict = true;
  // Null or empty string is not a number
  if (string == null || string.isEmpty) {
    return false;
  }
  // Try to parse input string to number.
  if (strict == true) {
    return string == '1' || string == 'true';
  }
  return string != '0' && string != 'false' && string != '';
}
