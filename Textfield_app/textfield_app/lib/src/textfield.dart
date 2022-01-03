// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

//controlador de estado del textfield un clase con sus propiedades
final TextEditingController controller = TextEditingController();

// el string vacio para rellenar con el textfield
String inputText = "";

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Textfield Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: const InputDecoration(hintText: "Ingrese un texto"),
              onSubmitted: tap,
              controller: controller,
            ),
            Text(inputText),
          ],
        ),
      ),
    );
  }

  void tap(String value) {
    setState(() {
      inputText = inputText + "\n" + value;
      controller.clear();
    });
  }
}
