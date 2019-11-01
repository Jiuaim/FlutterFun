import 'package:flutter/material.dart';

class XTCourse extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new XTCourseState();
}

class XTCourseState extends State<XTCourse> {
  final topBar = AppBar(
    backgroundColor: Color(0xff0000ff),
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

  int count = 0;
  void addCount() {
    setState(() {
      this.count++;
    });
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      backgroundColor: Colors.blue,
      body: Center(
          child: Text('Second: $count', style: TextStyle(fontSize: 30))
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addCount,
        child: Icon(Icons.add),
      )
    );
  }
}