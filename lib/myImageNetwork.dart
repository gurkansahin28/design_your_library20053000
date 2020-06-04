import 'package:flutter/material.dart';

// ignore: camel_case_types
class myImageNetwork extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Image.network("https://i.picsum.photos/id/765/536/354.jpg",
      width: 536, height: 354,);
  }
}
