import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  MyCard({
    required this.title,
    required this.icon,
  });

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            title,
            icon,
          ],
        ),
      ),
    );
  }
}
