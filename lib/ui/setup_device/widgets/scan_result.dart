// Copyright 2017, Paul DeMarco.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
// import 'package:logger/logger.dart';
import '../../../services/bluetooth/ble_api.dart';

// var logger = Logger(
//   printer: PrettyPrinter(),
// );

//ANDY TODO started to get NULL results here after merging BLEDevice, BLEDevice2

class ScanResultTile extends StatelessWidget {
  final ScannedDevice result;
  final VoidCallback onTap;
  const ScanResultTile({Key key, this.result, this.onTap}) : super(key: key);

  Widget _buildTitle(BuildContext context) {
    if (result != null) {
      if (result.device.name.length > 0) {
        // logger.v(
        //     'ScanResult for BLEDevice ${result.device.id} ${result.hashCode}');
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              result.device.name ?? '<null name>',
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              result.device.id.toString(),
              style:
                  Theme.of(context).textTheme.caption.apply(color: Colors.red),
            ),
            Icon(Icons.bluetooth,
                color: Theme.of(context).iconTheme.color.withOpacity(0.9)),
            // RSSI also shown in title leading
            // Text(
            //   'RSSI: ${result.rssi.toString()}',
            //   style:
            //       Theme.of(context).textTheme.caption.apply(color: Colors.red),
            // )
          ],
        );
      } else {
        return Text(result.device.id.toString());
      }
    }
  }

  Widget _buildAdvRow(BuildContext context, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title, style: Theme.of(context).textTheme.caption),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Text(
              value,
              style:
                  Theme.of(context).textTheme.caption.apply(color: Colors.red),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }

  String getNiceHexArray(List<int> bytes) {
    return '[${bytes.map((i) => i.toRadixString(16).padLeft(2, '0')).join(', ')}]'
        .toUpperCase();
  }

  String getNiceManufacturerData(Map<int, List<int>> data) {
    if (data.isEmpty) {
      return null;
    }
    List<String> res = [];
    data.forEach((id, bytes) {
      res.add(
          '${id.toRadixString(16).toUpperCase()}: ${getNiceHexArray(bytes)}');
    });
    return res.join(', ');
  }

  String getNiceServiceData(Map<String, List<int>> data) {
    if (data.isEmpty) {
      return 'N/A';
    }
    List<String> res = [];
    data.forEach((id, bytes) {
      res.add('${id.toUpperCase()}: ${getNiceHexArray(bytes)}');
    });
    return res.join(', ');
  }

  String getNiceServiceUUID(List<String> data) {
    if (data.isEmpty) {
      return 'N/A';
    }
    List<String> res = [];
    data.forEach((v) {
      if (v.toLowerCase() == meshServiceStr) {
        res.add('Meshtastic (${v.toUpperCase()})');
      } else {
        res.add('${v.toUpperCase()}');
      }
    });
    return res.join(', ');
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: _buildTitle(context),
      leading: Text(result.rssi.toString()),
      initiallyExpanded: true, //toggle this for expand/collapse layout
      trailing: OutlinedButton(
        child: (result.advertisementData.connectable)
            ? const Text('CONNECT')
            : const Text('Not Meshtastic'),
        // color: Colors.black,
        // textColor: Colors.white,
        onPressed: (result.advertisementData.connectable) ? onTap : null,
      ),
      children: <Widget>[
        _buildAdvRow(
            context, 'Complete Local Name', result.advertisementData.localName),
        _buildAdvRow(context, 'Connectable',
            '${result.advertisementData.connectable ?? 'N/A'}'),
        _buildAdvRow(context, 'Tx Power Level',
            '${result.advertisementData.txPowerLevel ?? 'N/A'}'),
        _buildAdvRow(
            context,
            'Manufacturer Data',
            getNiceManufacturerData(
                    result.advertisementData.manufacturerData) ??
                'N/A'),
        _buildAdvRow(
            context,
            'Service UUIDs',
            getNiceServiceUUID(result.advertisementData.serviceUuids) ??
                'N/A'), // (result.advertisementData.serviceUuids.isNotEmpty)
        //     ? result.advertisementData.serviceUuids.join(', ').toUpperCase()
        //     : 'N/A'),
        _buildAdvRow(context, 'Service Data',
            getNiceServiceData(result.advertisementData.serviceData) ?? 'N/A'),
      ],
    );
  }
}
