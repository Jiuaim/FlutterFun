import 'package:flutter/material.dart';
import 'xt_pageManage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override 
  State<StatefulWidget> createState() => new MyAppState();
}

class MyAppState extends State {

  var curType = 0;

  void setCurTypeStatus(type) {
    setState(() {
      this.curType = type;
    });
  }
  @override 
  Widget build(BuildContext context) {
    return 
      MaterialApp(
        title: '学堂',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.black)
          ),
          textTheme: TextTheme(title: TextStyle(color: Colors.black))
        ),
        home: XTPageManage(),
      );
  }
}
