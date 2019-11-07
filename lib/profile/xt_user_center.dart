import 'package:flutter/material.dart';

class XTUserCenter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => XTUserCenterState();
}

class XTUserCenterState extends State<XTUserCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("个人中心"),),
      body: Center(
        child: IconButton(
          tooltip: "跳转",
          icon: Icon(Icons.add_circle),
          onPressed: () => {
            Navigator.pop(context, true)
          },
        ),
      ),
    );
  }
}