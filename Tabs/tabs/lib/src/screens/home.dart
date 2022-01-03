import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(
          Icons.home,
          size: 40,
          color: Colors.amber,
        ),
        Text("pagina 2"),
      ],
    );
  }
}
