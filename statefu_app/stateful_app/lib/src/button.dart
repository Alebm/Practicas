// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String flutterText = "";
  int index = 0;
  List<String> coleccion = ['flutter', 'es', 'genial'];

  void actualizar() {
    setState(() {
      flutterText = coleccion[index];
      index = index < 2 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful widget"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                flutterText,
                style: const TextStyle(fontSize: 30.0),
              ),
            ),
            ElevatedButton(
              onPressed: actualizar,
              child: (const Text("Actualizar")),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange)),
            ),
          ],
        ),
      ),
    );
  }
}
