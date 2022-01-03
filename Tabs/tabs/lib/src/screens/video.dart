import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  const Video({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(
          Icons.ondemand_video,
          size: 40,
          color: Colors.green,
        ),
        Text("page 1"),
      ],
    );
  }
}
