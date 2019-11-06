import 'package:flutter/material.dart';
import 'package:testapp/xt_commonCell.dart';
import 'package:testapp/xt_profile_header.dart';

class XTProfile extends StatelessWidget {
  final topBar = AppBar(
    backgroundColor: Color(0xffffffff),
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(Icons.camera_alt),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),),
    ],
  );

  final cellConfig = [{"imgPath": "assets/profile/ic_profile_faq.png", "text": "消息"}, 
  {"imgPath": "assets/profile/ic_profile_feedBack.png", "text": "常见问题"},
  {"imgPath": "assets/profile/ic_profile_message.png", "text": "意见反馈"},
  {"imgPath": "assets/profile/ic_profile_setting.png", "text": "设置"},];

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: cellConfig.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return XTProfileHeader();
          } else {
            var config = cellConfig[index - 1];
            return XTCommonCell(config["imgPath"], config["text"]);
          }
        },
      ),//XTCommonCell(),
    );
  }
}