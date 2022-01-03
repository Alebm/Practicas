import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("segunda pantalla"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Volver atras"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
