import 'package:flutter/material.dart';
import 'package:testapp/xt_home.dart';
import 'xt_course.dart';
import 'xt_home.dart';
import 'xt_profile.dart';

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
        title: '掌门学堂',
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
        home: this.getRigthPage(curType),
      );
  }

  Widget getRigthPage(type) {
    if (type == 0) {
      return XTHome(changePage: (type){
        this.setCurTypeStatus(type);
      },);
    } else if (type == 1) {
      return XTCourse(changePage: (type) {
        this.setCurTypeStatus(type);
      },);
    } else if (type == 2) {
      return XTProfile(changePage: (type){
        this.setCurTypeStatus(type);
      },);
    }
    return null;
  }
}
