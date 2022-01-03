// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MyDialog extends StatefulWidget {
  const MyDialog({Key? key}) : super(key: key);

  @override
  _MyDialogState createState() => _MyDialogState();
}

//enum para opciones, seleccionar opciones
enum DialogAction { yes, no }

void alertResult(DialogAction action) {
  print("tu seleccion es $action");
}

String inputValue = "";

class _MyDialogState extends State<MyDialog> {
  void onchanged(String value) {
    setState(() {
      inputValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Dialog Alert"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(hintText: "Ingrese texto"),
              onChanged: onchanged,
            ),
            ElevatedButton(
              child: const Text("Ver Alerta"),
              onPressed: () => tapAlert(inputValue),
            ),
          ],
        ),
      ),
    );
  }

  void tapAlert(String value) {
    AlertDialog dialog = AlertDialog(
      content: Text(value),
      actions: [
        TextButton(
          // SE PUEDE HACER CON UNA FUNCION FLECHA
          onPressed: () => alertResult(DialogAction.yes),
          child: const Text("si"),
        ),
        TextButton(
          // O SE PUEDE HACER CON LOS CORCHETES
          onPressed: () {
            alertResult(DialogAction.no);
          },
          child: const Text("no"),
        ),
      ],
    );

    showDialog(context: context, builder: (BuildContext context) => dialog);
  }
}
