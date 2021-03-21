
## To Do 


Porting Python
Should the stack sendData, sendPacket be all Async?  Or where to break it?

https://stackoverflow.com/questions/40660933/why-copyfrom-is-used-during-the-creation-of-the-constant-tensor
Python:     toRadio.packet.CopyFrom(meshPacket)
Dart:       toRadio.packet = meshPacket;

p.setChannel.CopyFrom(self.channels[channelIndex]);
p.setChannel.CopyFrom(self.channels[channelIndex]);

if c.role == channel_pb2.Channel.Role.DISABLED:


  void _handlePacketFromRadio(MeshPacket meshPacket) {
    //not needed Dict - work with object
    //add fromId and toId fields based on the node ID
    //TODO do porting
    // AF 17/03/21 updated from Python v1.20


seems to connect and initialise mesh twice  FIXED - repeated bloc initialisation due to refactor
automatic connect does show only one, no scanned devs bug?
connected devices show Mi Band!! filter DONE


When connected to 2 devices, can program either? to TEST

finddevice timer still runs in Command - why
finddevice not acting on SOmpRefresh state change
command form finalise and test

deviceRepoLogger into app logger

logger - single line with icon

setup screen block lock package DONE - temp

ensure ConnectComplted event.state happens!!

Notify and Handle incoming 
No packet ID -  still works?

Project
- license, copyright lines, and unused code
- rename files, as ..page etc

ConnectDeviceBLoc
- make it global to track device state DONE
- add RepositoryProvider global in RouteGenerator DONE - now using Getit SL
- add listener to device state, for BLE events DONE
- PREVENT commands going to sleeping device etc
- add listener to device state, for Mesh events sleep DONE
- listen to FromNume - see MeshAPI - seems to be empty?
- send notifications to phone, or global toast?

Find Devices
- make UI more stateful, show toast, disable CONNECT if already requested connect, etc
- Show devices that are already known
- auto connect to last known, if is avaialble
- Start a persistent settings screen

Commands
- do they work - DONE
- do equivalent of --info, then print prefs, method 'getConfig' DONE
        startConfig = mesh_pb2.ToRadio()
        startConfig.want_config_id = MY_CONFIG_ID  # we don't use this value
        self._sendToRadio(startConfig)
- clean up buttons/icons, navigation back button
- use animation from list to detail?
- allow user to enter value in param - use editable form, write to object DONE
- use the current prefs values as the default values
- use a min, max, default list for values  (or if one value, default, two def,, max..) DONE as separate fields
- do a composite command, like setRouter, list of prefs and values  DONE
- show result in a logger window - maybe page swipe from command screen
- DONE show result in toast also, or dialog box?  
- Command list to show simplified parameter layout (not editable)
- use drop-downs for bools
- DONE list has dividers based on id numbers, or colour changes.

- hide the unwanted params in UI 
- DONE write multi prefs code - add setMultiPrefs in mesh_api
- DONE show device name in appbar top of command screen
- group prefs commands
    wifi on, off, ap mode
    router mode on, off
    stationary location, with router.
    set location, lat  , long, etc

- Other Commands
- tabbed UI for each type of commands
- need a UI to select command type (read prefs, other infor, send commands, etc)
- show info, nodes from python  (get Config returns all, so dump all, and allow a refresh?)
- show results in a dialog box, and allow copy.  DONE
- bug with Snackbar see https://github.com/flutter/flutter/issues/39898 clears with v1.23
- set chan commands - very simiar to prefs  channel_settings.json
- set url
- gpio commands from python. 

Test mode in App
- test and ping modes
- similar to node range test, complementary cn detect that and display?


Scanned devices
- show RSSI, advertisement (versions not advertised) DONE

Connected devices
- shows a long list after time on - filter/simplify to Mesh only


logger_flutter setup 
- TEMP disabled with Flutter 2.0 pending null-safe version
- enable log fom app menu DONE
- logger - sinlge line with icon

https://medium.com/flutter-community/a-guide-to-setting-up-better-logging-in-flutter-3db8bab2000e
Logging - developer uses appLogger
- Info log for calls to public methods, bloc changes
- Verbose for step by step, complex area
- DEbug is temporary detail
- Warning for Exception when caught or raised
- Error for other errors

Logging - for users, uses userLogger, mostly form Mesh API and Connect
- Info log for calls to device, high level, connect, sleep, mesh updates
- Verbose for calls to the device in detail
- Warning for Exception when caught or raised
- Error for other errors

Splash page
- check for Bluetooth, Location etc
- load any assets

FindDevice bloc 
- connect again to old device

BLE API
- reconnect on failure or error

Mesh API
- subscribe to BLE Notify on FromNum **
- DONE Need new protobufs for V1.20, then can do channels
- split out Mesh and Node per python port

        "id": 120,  //used to sort
        "command": "num_missed_to_fail",
        "commandDescription": "If we miss this many owner messages from a node, we declare the node offline (defaults to 3 - to allow for some lost packets) (FIXME not yet used)",
        "params": [
            {
                "id": "num_missed_to_fail",  //push to stored prefs
                "param": "3",
                "paramDescription": "Count of missed messages",
                "paramDefault": [1, 3, 20],
                "paramType": "int"
            }


                    "id": 120,
        "command": "num_missed_to_fail",
        "commandDescription": "If we miss this many owner messages from a node, we declare the node offline (defaults to 3 - to allow for some lost packets) (FIXME not yet used)",
        "params": [
            {
                "id": 101,
                "param": "3",
                "paramDescription": "Count of missed messages",
                "paramDefault": "3",
                "paramType": "int"
            }


## Null Safety migration 

dart pub outdated --mode=null-safety
Resolving...
Showing dependencies that are currently not opted in to null-safety.
[✗] indicates versions without null safety support.
[✓] indicates versions opting in to null safety.   

Computing null safety support...
Package Name        Current    Upgradable  Resolvable            Latest

direct dependencies:
dartz               ✗0.9.2     ✗0.9.2      ✓0.10.0-nullsafety.1  ✓0.10.0-nullsafety.1  
flex_color_scheme   ✗1.4.1     ✗1.4.1      ✓2.0.0                ✓2.0.0
freezed_annotation  ✗0.12.0    ✗0.12.0     ✓0.14.1               ✓0.14.1
get_it              ✗5.0.6     ✗5.0.6      ✓6.0.0                ✓6.0.0
grouped_list        ✗3.7.1     ✗3.7.1      ✓4.0.0-nullsafety.1   ✓4.0.0-nullsafety.1
injectable          ✗1.1.2     ✗1.1.2      ✓1.2.2                ✓1.2.2
logger              ✗0.9.4     ✗0.9.4      ✓1.0.0                ✓1.0.0
shared_preferences  ✗0.5.12+4  ✗0.5.12+4   ✓2.0.5                ✓2.0.5
wakelock            ✗0.2.1+1   ✗0.2.1+1    ✓0.5.0+2              ✓0.5.0+2

dev_dependencies:
build_runner        ✗1.11.5    ✗1.11.5     ✗1.11.5               ✗1.12.2
freezed             ✗0.12.7    ✗0.12.7     ✓0.14.1               ✓0.14.1
very_good_analysis  ✗1.0.4     ✗1.0.4      ✓2.0.0                ✓2.0.0

11  dependencies are constrained to versions that are older than a resolvable version.
To update these dependencies, edit pubspec.yaml, or run `dart pub upgrade --null-safety`.


## resources

Forms
https://www.youtube.com/watch?v=OtIDk6-p3eQ&ab_channel=RobertBrunhage
https://www.youtube.com/c/RobertBrunhage/playlists


https://bezkoder.com/dart-list/

For faster development in flutter you can use the quick fix tool with is Ctrl+. 

Colours, Themes
https://rydmike.com/colorscheme
https://rydmike.com/assets/LightScheme014.png?raw=true
https://rydmike.com/demoflexfold/#/


## Packages

Flutter_blue
https://github.com/pauldemarco/flutter_blue
https://github.com/pauldemarco/flutter_blue/issues/787
REcent fork with some fixes, ahead of master
https://github.com/Fyresite/flutter_blue

https://pub.dev/packages/flutter_settings_screens
seems to be supported, NNBD under devlopment
supports hive or shared prefs

https://pub.dev/packages/hive
Hive is a lightweight and blazing fast key-value database written in pure Dart. 

## Navigation


https://material.io/design/navigation/understanding-navigation.html#lateral-navigation

An app's primary navigation component should provide access to all destinations at the top level of its hierarchy. Apps with two or more top-level destinations can provide lateral navigation through a navigation drawer, bottom navigation bar, or tabs.

Navigation drawer	    Top-level destinations	5+	Mobile, Tablet, Desktop
Bottom navigation bar	Top-level destinations	3-5	Mobile
Tabs	                Any level of hierarchy	2+	Mobile, Tablet, Desktop

So Mesh_conf uses
    nav drawer top menu
    Tabs for lower level, like commands screens

### Tab placement
Tabs can be joined with components like top app bars, embedded in a specific UI region, or nested into components like cards and sheets. Tabs control the UI region displayed below them.
