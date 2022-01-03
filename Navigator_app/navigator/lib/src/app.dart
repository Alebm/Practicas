import 'package:flutter/material.dart';
import 'package:navigator/src/screens/second.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Primera pantalla"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("navigation"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Second(),
              ),
            );
          },
        ),
      ),
    );
  }
}
