import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyDecoratedBox extends StatelessWidget{
  Widget childForDecoration;
  BuildContext context;
  MyDecoratedBox(BuildContext context, Widget childForDecoration){
    this.context = context;
    this.childForDecoration = childForDecoration;
  }
  @override
  Widget build(context) {
    return DecoratedBox(
      position: DecorationPosition.background,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        border: Border.all(color: const Color(0x66000000), style: BorderStyle.solid, width: 4.0,),
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
        width: 300,
        height: 100,
        padding: EdgeInsets.all(20),
//child: FlutterLogo(),


        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(1.0)),
            //Icon(Icons.add_a_photo),
//Image.asset("assets/images/gurkan.jpg"),
//RaisedButton(onPressed: (){},child: Text("Button1"),),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 80.0),
                  ),
                  childForDecoration,
                ],
              ),
            ),
          ],
        ), //Row

      ), //Container
    );
  }

}
