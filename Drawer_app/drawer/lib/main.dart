import 'package:drawer/home.dart';
import 'package:drawer/screens/battery.dart';
import 'package:drawer/screens/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: const Home(), routes: <String, WidgetBuilder>{
      //"/": (BuildContext context) => const Home(),
      Settings.routeName: (BuildContext context) => const Settings(),
      Battery.routeName: (BuildContext context) => const Battery(),
    }),
  );
}
