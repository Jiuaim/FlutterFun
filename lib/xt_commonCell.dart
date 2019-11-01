import 'package:flutter/material.dart';

class XTCommonCell extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new XTCommonCellState();
}

class XTCommonCellState extends State<XTCommonCell> {
    @override
    Widget build(BuildContext context) {
      return Row(children: <Widget>[
        Image.asset("assets/profile/ic_profile_faq.png"),
        // Padding(padding: EdgeInsets.only(left: 100), child: Text("这是什么鬼呢"),),
        Padding(padding: EdgeInsets.only(right: 12), child: Image.asset("assets/common/ic_cell_more_indicator.png"),),
      ],);
    }
  }