import 'package:flutter/material.dart';
import 'package:svgaplayer_flutter/svgaplayer_flutter.dart';
import 'package:testapp/xt_course.dart';
import 'package:testapp/xt_home.dart';
import 'package:testapp/xt_profile.dart';

class XTPageManage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new XTPageManageState();
}

class XTPageManageState extends State<XTPageManage> {
  var curPageIndex = 0;
  PageController _pageController;
  final pageList = [XTHome(), XTCourse(), XTProfile()];
  
  void onTap(index) {
    setState(() {
      this.curPageIndex = index;
      this._pageController.jumpToPage(this.curPageIndex);
    });
  }

  @override
  void initState() {
    super.initState();
    this._pageController = new PageController(initialPage: this.curPageIndex);
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
            activeIcon: SizedBox(width: 35, height: 35, child: SVGASimpleImage(assetsName: "assets/tabbar/svg/ic_tabbar_home_sel.svga",),),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/tabbar/ic_tabbar_course.png")), 
            title: Text("课程"), 
            activeIcon: SizedBox(width: 35, height: 35, child: SVGASimpleImage(assetsName: "assets/tabbar/svg/ic_tabbar_course_sel.svga",),),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/tabbar/ic_tabbar_profile.png")), 
            title: Text("我的"), 
            activeIcon: SizedBox(width: 35, height: 35, child: SVGASimpleImage(assetsName: "assets/tabbar/svg/ic_tabbar_profile_sel.svga",),),
          ),
        ],
        onTap: this.onTap,
        iconSize: 35,
        selectedFontSize: 11,
        unselectedFontSize: 10,
      ),
      body: PageView(
        children: pageList,
        controller: this._pageController,
      ),
      //IndexedStack(index: curPageIndex, children: pageList,),
    );
  }
}