import 'package:flutter/cupertino.dart';

class Device {
  late String name;
  late IconData icon;
  late List<bool> power;

  //constructor
  Device(String name, IconData icon) {
    this.name = name;
    this.icon = icon;
    this.power = [false];
  }
}

class Device_images {
  late String device_images;

  Device_images(String device_images) {
    this.device_images = device_images;
  }
}
