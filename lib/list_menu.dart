import 'package:flutter/material.dart';

class Jersey {
  final Widget iconMenu;
  final String textMenu;
  final double number;
  Jersey({this.iconMenu, this.textMenu, this.number});
}

List<Jersey> menuJersey = [
  Jersey(iconMenu: Icon(Icons.ac_unit), textMenu: 'All', number: 13.6343),
  Jersey(iconMenu: Icon(Icons.account_circle), textMenu: 'Football(Soccer)', number: 3.678),
  Jersey(iconMenu: Icon(Icons.adb), textMenu: 'Basketball', number: 2.365),
  Jersey(iconMenu: Icon(Icons.add_alert), textMenu: 'Rugby', number: 2.256),
  Jersey(iconMenu: Icon(Icons.alarm), textMenu: 'Badminton', number: 1.934),
  Jersey(iconMenu: Icon(Icons.assessment), textMenu: 'Tennis', number: 1.090),
  Jersey(iconMenu: Icon(Icons.attachment), textMenu: 'Hockey', number: 978),
];

class Kits {
  final Widget iconMenu;
  final String textMenu;
  final double number;
  Kits({this.iconMenu, this.textMenu, this.number});
}

List<Kits> menuKits = [
  Kits(iconMenu: Icon(Icons.battery_full), textMenu: 'Money', number: 12.454),
  Kits(iconMenu: Icon(Icons.bluetooth_audio), textMenu: 'Doraemon', number: 3.678),
  Kits(iconMenu: Icon(Icons.border_color), textMenu: 'Minimum', number: 3.654),
  Kits(iconMenu: Icon(Icons.brightness_1), textMenu: 'Big City Boy', number: 2.256),
  Kits(iconMenu: Icon(Icons.build), textMenu: 'Random', number: 5.361),
  Kits(iconMenu: Icon(Icons.call_to_action), textMenu: 'honey', number: 34.20),
  Kits(iconMenu: Icon(Icons.change_history), textMenu: 'Hockey', number: 978),
  Kits(iconMenu: Icon(Icons.alarm), textMenu: 'Badminton', number: 1.934),
  Kits(iconMenu: Icon(Icons.assessment), textMenu: 'Tennis', number: 1.090),
  Kits(iconMenu: Icon(Icons.attachment), textMenu: 'Hockey', number: 978),
];

