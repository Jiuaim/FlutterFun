import 'package:flutter/material.dart';
import 'package:testapp/xt_commonCell.dart';

class XTProfile extends StatelessWidget {
  final topBar = AppBar(
    backgroundColor: Color(0xffff0000),
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(Icons.camera_alt),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),),
    ],
  );

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.green,
      body: XTCommonCell(),
    );
  }
}