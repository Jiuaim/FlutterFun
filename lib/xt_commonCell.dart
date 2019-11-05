import 'package:flutter/material.dart';

class XTCommonCell extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new XTCommonCellState();
}

class XTCommonCellState extends State<XTCommonCell> {
    @override
    Widget build(BuildContext context) {
      return Container(
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Image.asset("assets/profile/ic_profile_faq.png"),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("问题反馈"),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Image.asset("assets/common/ic_cell_more_indicator.png", scale: 2,),
                ), 
              ),
            ],
          ),
        ),
        height: 44,
        decoration: BoxDecoration(color: Colors.white),
      );
    }
  }