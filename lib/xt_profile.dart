import 'package:flutter/material.dart';
import 'xt_tabbar.dart';


class XTProfile extends StatelessWidget {
  XTProfile({
    @required this.changePage,
  });

  final void Function(int type) changePage;

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
        bottomNavigationBar: new Container(
          color: Color(0xff00ff00),
          height: 50.0,
          alignment: Alignment.center,
          child: XTTabbar(type: 2, onPressed: (type){
            if (2 != type) this.changePage(type);
          },),
        ));
  }
}