import 'package:flutter/material.dart';

Future<void> showMyDialog(BuildContext context) async {
  return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          //contentPadding: EdgeInsets.only(left: 25, right: 25),
          title: Center(child: Text("About Dialog")),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content: Container(
            //padding: EdgeInsets.only(left: 25, right: 25),
            height: 200,
            width: 300,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  //SizedBox(height: 5,),
                  Text('\nMessage Header here \n'),
                  Text('Write your Message here. ' * 120,),
                  Text('\nMessage Footer here.',),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.20,
                  child: RaisedButton(
                    child: new Text(
                      'Fund',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Color(0xFF121A21),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    onPressed: () {
                      //saveIssue();
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 70.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.20,
                    child: RaisedButton(
                      child: new Text(
                        'Cancel',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Color(0xFF121A21),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
              ],
            )
          ],
        );
      }//builder
      );//showDialog
}
