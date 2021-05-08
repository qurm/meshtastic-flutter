
part of '../mesh_command_list.dart';

// Mesh command contains widgets to build command list
// buttons, parameters etc
//use https://javiercbk.github.io/json_to_dart/

class CommandTile extends StatelessWidget {
  final MeshCommand command;
  final List<ParameterTile> parameterTiles;
  final VoidCallback onRunPressed;

  const CommandTile(
      {Key? key, required this.command, required this.parameterTiles, required this.onRunPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (command.params!.paramList!.length > 0) {
      return ListTileTheme(
        tileColor: Colors.green[50], //command.id as int],
        child: ExpansionTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${command.command}'),
              ],
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 0, 16, 0),
                child: Text('${command.commandDescription}',
                    style: Theme.of(context).textTheme.bodyText2),
              ),
              // ...parameterTiles    //only show these in the detail screen
            ],
            trailing: IconButton(
              // use launch, open_in_new, hourglass_empty, done, done_all
              icon: Icon(Icons.launch,
                  color: Theme.of(context).iconTheme.color!.withOpacity(0.9)),
              onPressed: onRunPressed,
            ),
            backgroundColor: Colors.green[100]), //expanded only colour
      );
    } else {
      return ListTile(
        title: const Text('Command'),
        subtitle: Text('${command.commandDescription} ${command.command}'),
      );
    }
  }
}

class ParameterTile extends StatelessWidget {
  final MeshCommandParameter parameter;

  const ParameterTile({
    Key? key,
    required this.parameter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return ExpansionTile(
    return ListTile(
      // isThreeLine: true,
      title: TextFormField(
        initialValue: '${parameter.value}',
        maxLength: 8,
        decoration: const InputDecoration(hintText: 'Set param value'),
      ),
      // Text('${parameter.param}'),
      trailing: Text('Default: ${parameter.defaultValue}'),
      //Add a text box

      leading: Text('${parameter.description}',
          style: Theme.of(context).textTheme.bodyText2),
      // .copyWith(color: Theme.of(context).textTheme.caption.color)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
    );
    // );
  }
}

/// Form layout on Card to show command and a list of parameters
///  keep the child params dumb just a Text field and validator
// see https://github.com/seenickcode/flutter_realistic_forms/blob/master/lib/screens/home_material.dart
class MeshCommandForm extends StatefulWidget {
  const MeshCommandForm({Key? key, required this.command, required this.onRunPressed})
      : super(key: key);

  final MeshCommand command; // = MeshCommandForm();
  final VoidCallback onRunPressed;

  @override
  MeshCommandFormState createState() => MeshCommandFormState();
}

class MeshCommandFormState extends State<MeshCommandForm> {
  final _formKey = GlobalKey<FormState>();
  bool _enableBtn = true;

  @override
  Widget build(BuildContext context) {
    // AutovalidateMode __autovalidate = AutovalidateMode.disabled;
    if (widget.command.params!.paramList!.length > 0) {
      // return ExpansionTile(
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.green[50],
          child: Container(
            // height: MediaQuery.of(context).size.height * 0.6,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${widget.command.command}',
                    style: Theme.of(context).textTheme.headline6),
                Text('${widget.command.commandDescription}',
                    style: Theme.of(context).textTheme.bodyText2),
                Form(
                    key: _formKey,
                    // autovalidateMode: __autovalidate,
                    // onChanged: () => setState(
                    //     () => _enableBtn = _formKey.currentState.validate()),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                            mainAxisSize: MainAxisSize.min,
                            children: widget.command.params!.paramList!
                                .where((p) => p.visible!) //only visible tiles
                                .map((p) => ParameterEdit(parameter: p))
                                .toList()),
                        Row(
                            // padding: const EdgeInsets.symmetric(
                            //     vertical: 8.0, horizontal: 0.0),
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              OutlinedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop('cancel');
                                  },
                                  child: const Text('CANCEL')),
                              OutlinedButton(
                                  onPressed: _enableBtn
                                      ? () {
                                          final form = _formKey.currentState!;
                                          if (form.validate()) {
                                            form.save();
                                            BlocProvider.of<SetupDeviceBloc>(
                                                    context)
                                                .add(
                                              DeviceCommandEvent(
                                                  widget.command),
                                            );
                                            _showMessage(
                                                context, 'Submitting form');
                                          }
                                        }
                                      : null, //set to null disables button code
                                  child: const Text('UPDATE DEVICE'))
                            ])
                      ],
                    ))
              ],
              // leading: IconButton(
              //   // use launch, open_in_new, hourglass_empty, done, done_all
              //   icon: Icon(Icons.launch,
              //       color: Theme.of(context).iconTheme.color.withOpacity(0.5)),
              //   onPressed: widget.onRunPressed,
              // ),
              // backgroundColor: Colors.green[200]
            ),
          ),
        ),
      );
    } else {
      return ListTile(
        title: const Text('Command'),
        subtitle: Text(
            '${widget.command.commandDescription} ${widget.command.command}'),
      );
    }
  }

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
}

// https://medium.com/flutter-community/flutter-forms-validation-the-ultimate-guide-1b469169ca6e
class ParameterEdit extends StatelessWidget {
  const ParameterEdit({Key? key, required this.parameter});
  final MeshCommandParameter parameter;

  @override
  Widget build(BuildContext context) {
    final _textCont = TextEditingController(text: parameter.value);
    return ListTile(
      // subtitle:
      //     Text('${parameter.id}', style: Theme.of(context).textTheme.bodyText1),
      // .copyWith(color: Theme.of(context).textTheme.caption.color)),
      title: Row(
        children: [
          Expanded(
              flex: 1,
              child: Text('${parameter.id}:',
                  style: Theme.of(context).textTheme.subtitle2)),
          Expanded(
            flex: 2,
            child: TextFormField(
              // initialValue: '${parameter.value}',  //set in _textCont
              controller: _textCont,
              maxLength: (parameter.type == 'string')
                  ? ((parameter.max == 0) ? 8 : parameter.max)
                  : 8,
              keyboardType: (parameter.type == 'int')
                  ? TextInputType.number
                  : TextInputType.text,
              enabled: parameter.editable,
              decoration: InputDecoration(
                  // border: OutlineInputBorder(),
                  // hintText is in field, overwritten by default value

                  errorStyle: TextStyle(
                    color: Theme.of(context).errorColor, // or any other color
                  ),
                  labelText: (parameter.editable as bool)
                      ? '${parameter.description} ,default is ${parameter.defaultValue}'
                      : null),
              onSaved: (newValue) {
                parameter.value = newValue;
                appLogger!.v('ParameterEdit onSave: ${parameter.value} ');
              },
              autovalidateMode: AutovalidateMode.disabled, //onUserInteraction,
              validator: (value) {
                switch (parameter.type) {
                  case 'int':
                    if (!isNumericInteger(value)) {
                      return 'Must be an integer';
                    } else {
                      // if (int.tryParse(value) > parameter.max) {
                      if (false) {
                        // _textCont.text = parameter.max.toString();
                        return 'Max allowed value is ${parameter.max}';
                      }
                    }
                    break;
                  case 'bool':
                    if (!['1', 'true', '0', 'false']
                        .contains(value!.toLowerCase())) {
                      return 'Must be true, 1  or false, 0';
                    }
                    break;

                  //todo validate length
                  case 'string':
                    if ((value!.length > parameter.max!)) {
                      return 'Max allowed length is ${parameter.max}';
                    }
                    break;
                }
                return null;
              },
            ),
          ),
        ],
      ),
      // trailing: Text('Default: ${parameter.defaultValue}'),
      // put in the labelText
      // leading: Text('${parameter.id}:',
      //     style: Theme.of(context).textTheme.bodyText1),

      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
    );
    // );
  }
}
