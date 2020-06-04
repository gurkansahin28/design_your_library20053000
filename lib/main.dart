import 'package:flutter/material.dart';
import 'MyHomePage.dart';
import 'myStrings.dart';


void main(){
  runApp(MyApp());
}// main has been ended --------------

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: appTitle,
      //theme: ThemeData.dark(),
      theme: ThemeData(
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.green,

      ),
      home: MyHomePage(title: appTitle),
    );
  }// build
}// MyApp has been ended -------------