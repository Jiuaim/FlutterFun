import 'package:flutter/material.dart';
// import 'xt_course.dart';
// import 'xt_home.dart';
// import 'xt_profile.dart';

class XTTabbar extends StatelessWidget {

  const XTTabbar({
    @required this.type,
    @required this.onPressed,
  });

  final int type;
  final void Function(int type) onPressed;

  @override 
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(icon: ImageIcon(AssetImage(this.type == 0 ? "assets/tabbar/ic_tabbar_home.png":"assets/tabbar/ic_tabbar_home.png")), onPressed: (){
            // this.gotoPage(context, 0);
            this.onPressed(0);
          }, iconSize: 50,),
          IconButton(icon: ImageIcon(AssetImage(this.type == 1 ? "assets/tabbar/ic_tabbar_course.png":"assets/tabbar/ic_tabbar_course.png")), onPressed: (){
            // this.gotoPage(context, 1);
            this.onPressed(1);
          }, iconSize: 50,),
          IconButton(icon: ImageIcon(AssetImage(this.type == 2 ? "assets/tabbar/ic_tabbar_profile.png":"assets/tabbar/ic_tabbar_profile.png")), onPressed: (){
            // this.gotoPage(context, 2);
            this.onPressed(2);
          }, iconSize: 50,),
      ],)
    );
  }

  // void gotoPage(context, type) {
  //   if (this.type == type) {
  //     this.onPressed();
  //   } else {
  //     Navigator.push(context, MaterialPageRoute(builder: (context) => this.getRightPage(type)));
  //   }
  // }

  // Widget getRightPage(type) {
  //   if (type == 0) {
  //     return XTHome();
  //   } else if (type == 1) {
  //     return XTCourse();
  //   } else if (type == 2) {
  //     return XTProfile();
  //   }
  //   return null;
  // }
}