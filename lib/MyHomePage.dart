import 'package:flutter/material.dart';

import 'myBody.dart';
import 'myStrings.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
} // MyHomePage class has been ended -----------

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text(appTitle),
        backgroundColor: Color.fromARGB(255, 80, 100, 80),
        brightness: Brightness.dark,
      ),
      body: myBody(),
      //floatingActionButton: myFab(),
      //drawer: myDrawer(),
      //bottomNavigationBar: myBottomNavigationBar(),
      //bottomSheet: myBottomSheet(),
    );
  }
} // _MyHomePageState class has been ended ----------
