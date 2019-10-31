import 'package:flutter/material.dart';

class XTHome extends StatelessWidget {
  final topBar = AppBar(
    backgroundColor: Color(0xffff0000),
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(Icons.camera_alt),
    title: Center(child: Icon(Icons.search),),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),),
    ],
  );

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      backgroundColor: Colors.red,
    );
  }
}