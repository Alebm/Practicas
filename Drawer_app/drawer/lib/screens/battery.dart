import 'package:flutter/material.dart';

class Battery extends StatelessWidget {
  const Battery({Key? key}) : super(key: key);

  static const String routeName = "/Battery";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla Battery"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Pantalla Battery"),
            Icon(Icons.battery_alert),
          ],
        ),
      ),
    );
  }
}
