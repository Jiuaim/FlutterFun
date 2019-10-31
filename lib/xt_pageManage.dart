import 'package:flutter/material.dart';
import 'package:testapp/xt_course.dart';
import 'package:testapp/xt_home.dart';
import 'package:testapp/xt_profile.dart';

class XTPageManage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new XTPageManageState();
}

class XTPageManageState extends State<XTPageManage> {
  var curPageIndex = 0;
  var pageList = [XTHome(), XTCourse(), XTProfile()];
  
  void onTap(index) {
    setState(() {
      this.curPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.curPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/tabbar/ic_tabbar_home.png")), 
            title: Text("首页"), 
            activeIcon: ImageIcon(AssetImage("assets/tabbar/ic_tabbar_home.png")),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/tabbar/ic_tabbar_course.png")), 
            title: Text("课程"), 
            activeIcon: ImageIcon(AssetImage("assets/tabbar/ic_tabbar_course.png")),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/tabbar/ic_tabbar_profile.png")), 
            title: Text("我的"), 
            activeIcon: ImageIcon(AssetImage("assets/tabbar/ic_tabbar_profile.png")),
          ),
        ],
        onTap: this.onTap,
        iconSize: 35,
        selectedFontSize: 11,
        unselectedFontSize: 10,
      ),
      body: pageList[this.curPageIndex],
    );
  }
}