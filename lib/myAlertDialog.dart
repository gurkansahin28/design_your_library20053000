import 'package:designyourlibrary20053000/myFunctions.dart';
import 'package:flutter/material.dart';
//rounded appearance, scrollable and stylized text, passable functions name into its buttons.

Future <void> myAlertDialog(BuildContext context, String title, String message,
    {String header, String footer}) async{
if(header==null) header =" ";
if(footer==null) footer=" ";

  return showDialog<void>(
    context: context,
    barrierDismissible: false,//dismissing the user's pressing out of AlertDialog
    builder: (context){
      return AlertDialog(
        //key: ,
        elevation: 10.0,//the rise illusion, in the z-axis for AlertDialog.
        title:Center(child: Text(title)),
        titlePadding: EdgeInsets.all(5.0),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        backgroundColor: Color.fromARGB(255, 80, 100, 80),
        contentPadding: EdgeInsets.all(15.0),
        contentTextStyle: TextStyle(color: Colors.white, fontStyle: FontStyle.italic,),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
        content: Container(
          height: 100,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(header, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                Text(message, style: TextStyle(fontStyle: FontStyle.normal),),
                Text(footer, style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),// Column
          ),
        ),//Container
        actionsPadding: EdgeInsets.all(2.0),

        //actionsOverflowDirection: ,
        //actionsOverflowButtonSpacing: ,
        //semanticLabel: ,
        //insetPadding = _defaultInsetPadding,
        //clipBehavior = Clip.none,
        //scrollable = false,

        buttonPadding: EdgeInsets.all(5.0),
        actions: <Widget>[
          Row(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(child:Text("OK!"), onPressed: (){navigatorPop(context);},),
              FlatButton(child:Text("GO!"), onPressed: (){navigatorPop(context);},),
            ],// <Widget>[]
          ),//Row
        ],//<Widget>[]
      );// AlertDialog returned ----
    }
  );// showDialog has been ended
}// myAlertDialog has been ended ----------------------
