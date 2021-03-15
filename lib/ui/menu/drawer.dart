import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../router/route_generator.dart';
import 'package:logger/logger.dart';
import 'package:logger_flutter/logger_flutter.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
              icon: Icons.home,
              text: 'Home',
              onTap: () => Navigator.pushReplacementNamed(context, '/')),
          _createDrawerItem(
              icon: Icons.contacts,
              text: 'Find Devices',
              onTap: () => Navigator.pushReplacementNamed(context, '')),
          _createDrawerItem(
              icon: Icons.event,
              text: 'Events',
              onTap: () => Navigator.pushReplacementNamed(context, '')),
          _createDrawerItem(
              icon: Icons.note,
              text: 'Device Setup',
              onTap: () => Navigator.pushReplacementNamed(
                  context, '/meshCommandListScreen')),
          const Divider(),
          _createDrawerItem(icon: Icons.collections_bookmark, text: 'Setup'),
          _createDrawerItem(
              icon: Icons.collections_bookmark,
              text: 'Log Console',
              onTap: () => LogConsole.open(context)),
          _createDrawerItem(icon: Icons.face, text: 'Authors'),
          _createDrawerItem(
              icon: Icons.account_box, text: 'Flutter Documentation'),
          _createDrawerItem(icon: Icons.stars, text: 'Useful Links'),
          const Divider(),
          _createDrawerItem(icon: Icons.bug_report, text: 'Report an issue'),
          ListTile(
            title: const Text('0.0.1'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         fit: BoxFit.fill,
        //         image: AssetImage('res/images/drawer_header_background.png'))),
        child: Stack(children: <Widget>[
          const Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text('Meshtastic Flutter App',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
