import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(
          title: 'Assets directory, image, \nswitch and DecoratedBox usage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool switchControl = false;
  var textHolder = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (switchControl == false) {
      setState(() {
        switchControl = true;
        textHolder = 'Switch is ON';
      });
      print('Switch is ON');
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        switchControl = false;
        textHolder = 'Switch is OFF';
      });
      print('Switch is OFF');
      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  //int _counter = 0;
/*
  void _incrementCounter() { setState(() {_counter++; }); }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Container(
              width: 250,
              height: 80,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "elleme",
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                  ),
                ),
              ),
            ), //Container

            //------------------------------------
            DecoratedBox(
              position: DecorationPosition.background,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                border: Border.all(color: const Color(0x99000000), style: BorderStyle.solid, width: 4.0,),
                borderRadius: BorderRadius.circular(13.0),
                shape: BoxShape.rectangle,
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Color(0x66000000),
                    blurRadius: 10.0,
                    spreadRadius: 4.0,
                  )
                ],
              ), //BoxDecoration

              child: Container(
                width: 250,
                height: 100,
                padding: EdgeInsets.all(20),
                //child: FlutterLogo(),
                //--------------------------------------------------
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(1.0)),
                    Icon(Icons.add_a_photo),
                    //Image.asset("assets/images/gurkan.jpg"),
                    //RaisedButton(onPressed: (){},child: Text("Button1"),),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 80.0),
                          ),
                          Text("Gürkan"),
                          Text("ŞAHİN"),
                        ],
                      ),
                    ),
                    RotatedBox(// for rotating the Switch
                        quarterTurns: 1,
                        child: Switch(
                          onChanged: toggleSwitch,
                          value: switchControl,
                          activeColor: Color.fromARGB(250, 150, 98, 55),
                          activeTrackColor: Color.fromARGB(250, 100, 100, 100),
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                        )),
                  ],
                ), //Row
                //------------------------------------------------------
              ), //Container
            ) //DecoratedBox
          ])), //body:Center
    );
  }
}
