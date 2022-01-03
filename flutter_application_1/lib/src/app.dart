import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/card.dart';

class MyApp extends StatelessWidget {
  final double iconsize = 30.0;
  final TextStyle textStyle = const TextStyle(
    color: Colors.green,
    fontSize: 30.0,
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless wdget"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MyCard(
            title: Text(
              "I Love Flutter",
              style: textStyle,
            ),
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
              size: iconsize,
            ),
          ),
          MyCard(
            title: Text(
              "I Like This Video",
              style: textStyle,
            ),
            icon: Icon(
              Icons.access_time_filled_sharp,
              color: Colors.yellow,
              size: iconsize,
            ),
          ),
          MyCard(
            title: Text(
              "Next Video",
              style: textStyle,
            ),
            icon: Icon(
              Icons.video_call_rounded,
              color: Colors.blue,
              size: iconsize,
            ),
          ),
        ],
      ),
    );
  }
}
