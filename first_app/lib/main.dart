// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    home: Scaffold(
      floatingActionButton: const FloatingActionButton(
        child: Center(
          child: Icon(Icons.access_alarm),
        ),
        onPressed: metodo,
      ),
      appBar: AppBar(
        title: const Text("Primera app"),
      ),
      body: const Center(
        child: Text(
          "Hello World",
          style: TextStyle(fontSize: 60),
        ),
      ),
    ),
  );

  runApp(app);
}

void metodo() {
  print('presiono');
}
