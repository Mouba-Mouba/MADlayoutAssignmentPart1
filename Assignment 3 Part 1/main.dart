// Create a Grid Layout of IoT (Internet of Things) devices in a particular house.
// Keep it simple to just 4-6 devices.
// Each device will have an icon on its own.
// When you press the icon, toggle the image and toggle the text underneath between on and off.

import 'package:flutter/material.dart';
import 'device.dart';
import 'device_container.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Device> devices = [
    Device("Light", Icons.lightbulb),
    Device("Volley Ball", Icons.sports_volleyball),
    Device("Security Camera", Icons.camera),
    Device("Scanner", Icons.adf_scanner),
    Device("Car", Icons.directions_car),
    Device("Phone", Icons.phone_android),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MAD Assignment 3 Part 1"),
        ),
        body: Container(
          color: Colors.grey[100],
          padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
          child: GridView.count(
            childAspectRatio: (140 / 100),
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            children: devices.map((device) {
              return DeviceContainer(device);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
