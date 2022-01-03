import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(
          Icons.contacts,
          size: 40,
          color: Colors.amberAccent,
        ),
        Text("pagina 3")
      ],
    );
  }
}
