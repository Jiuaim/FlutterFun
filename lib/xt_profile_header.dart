import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class XTProfileHeader extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new XTProfileHeaderState();
}

class XTProfileHeaderState extends State<XTProfileHeader> {
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 150,
      // decoration: BoxDecoration(color: Colors.red),
      child: Padding(
        padding: EdgeInsets.only(right: 15),
        child: Image.asset("assets/profile/bg_profile.png"),
      ), 
    );
  }
}