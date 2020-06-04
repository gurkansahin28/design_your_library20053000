import 'package:designyourlibrary20053000/MyDecoratedBox.dart';
import 'package:designyourlibrary20053000/myAlertDialog.dart';
import 'package:designyourlibrary20053000/myStrings.dart';
import 'package:flutter/material.dart';

String alertTitle = "About what";
String blabla = "kel kör kirpi"*220 ;
Widget childForDecoration = Text("  Banner text  ", style: TextStyle(
//--------------------------------
  //inherit = true,
  color: Colors.orangeAccent,
  backgroundColor: Color.fromARGB(180, 190, 190, 200),
  fontSize: 35.0,
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.italic,
  letterSpacing: 3.0,
  //wordSpacing: 10.0,
  //textBaseline: TextBaseline.alphabetic,
  //height: 15.0,
  //locale: ,
  //foreground: ,
  //background: ,
  //shadows: ,
  //fontFeatures: ,
  decoration: TextDecoration.lineThrough,
  decorationColor: Color.fromARGB(180, 200, 200, 200),
  decorationStyle: TextDecorationStyle.dotted,
  //decorationThickness: 20.0,
  //debugLabel: "lebodfsdfsdf",
  //fontFamily: "Liberation Serif",
  //List<String> fontFamilyFallback,
//--------------------------------
)

);
// ignore: camel_case_types
class myBody extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MyDecoratedBox(context, childForDecoration),
          RaisedButton(
            child: Text("imPress Me!"),
            onPressed: (){myAlertDialog(context, alertTitle, rhymesTR, header: "Türkçe Tekerlemeler", footer: "Hadi bakalım!:)");},
          ),
        ],
      ),
    );
  }

}