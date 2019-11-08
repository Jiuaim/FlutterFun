import 'package:flutter/material.dart';
import 'package:testapp/home/xt_home_ani.dart';
import 'package:testapp/profile/xt_user_center.dart';
import 'package:testapp/xt_course.dart';
import 'package:testapp/xt_home.dart';
import 'package:testapp/xt_profile.dart';
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
        routes: <String, WidgetBuilder> {
          '/home': (BuildContext context) => XTHome(),
          '/course': (BuildContext context) => XTCourse(),
          '/profile': (BuildContext context) => XTProfile(),

          '/user_center': (BuildContext context) => XTUserCenter(),

          '/home_ani': (BuildContext context) => XTHomeAni(),
        },
      );
  }
}
