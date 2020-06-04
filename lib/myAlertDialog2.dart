//import 'package:designyourlibrary20053000/myFunctions.dart';
import 'package:flutter/material.dart';

Future <void> myAlertDialog2(BuildContext context, String title, String message, {String header, String footer}) async{
  if(header==null) header =" ";
  if(footer==null) footer=" ";

  return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context){
        return AlertDialog(
          //key: ,
          elevation: 20.0,
          title:Center(child: Text(title)), //header of the AlertDialog
          titlePadding: EdgeInsets.all(5.0),//framing title text with given padding value
          titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          backgroundColor: Color.fromARGB(255, 180, 180, 180),
          contentPadding: EdgeInsets.all(15.0),
          contentTextStyle: TextStyle(fontStyle: FontStyle.italic, ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content:DecoratedBox(//------------------------------------------
            position: DecorationPosition.background,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              border: Border.all(color: const Color(0x99000000), style: BorderStyle.solid, width: 4.0,),
              borderRadius: BorderRadius.all(Radius.circular(13.0)),
              shape: BoxShape.rectangle,
              boxShadow:const<BoxShadow>[
                BoxShadow(color: Color(0x66000000), blurRadius: 10.0, spreadRadius:4.0,)
              ],
            ),
            child:Container(
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
            ) ,
          ) ,
          actionsPadding: EdgeInsets.all(2.0),
          buttonPadding: EdgeInsets.all(5.0),
          actions: <Widget>[
            Row(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(child:Text("OK!"), onPressed: (){Navigator.of(context).pop();},),
                FlatButton(child:Text("GO!"), onPressed: (){Navigator.of(context).pop();},),
              ],// <Widget>[]
            ),//Row
          ],//<Widget>[]
        );// AlertDialog returned ----
      }
  );// showDialog has been ended
}// myAlertDialog has been endede ----------------------
