import 'package:flutter/material.dart';
import 'package:tabs/src/screens/contact.dart';
import 'package:tabs/src/screens/home.dart';
import 'package:tabs/src/screens/video.dart';

class MyTabs extends StatefulWidget {
  const MyTabs({Key? key}) : super(key: key);

  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tabs"),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(
                  Icons.ondemand_video,
                  color: Colors.amber,
                ),
              ),
              Tab(
                icon: Icon(Icons.contacts),
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Home(),
            Video(),
            Contacts(),
          ],
        ),
      ),
    );
  }
}
