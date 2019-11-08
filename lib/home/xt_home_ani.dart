import 'package:flutter/material.dart';

class XTHomeAni extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return XTHomeAniState();
  }
}

class XTHomeAniState extends State<XTHomeAni> with TickerProviderStateMixin {
  AnimationController _controller;
  CurvedAnimation _curvedAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(seconds: 2), vsync: this);
    _curvedAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("动画测试"),
      ),
      body: Center(
        child: Container(
          child: FadeTransition(
            opacity: _curvedAnimation,
            child: Image.asset("assets/profile/ic_profile_message.png"),
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Fade',
        child: Icon(Icons.brush),
        onPressed: () {
          _controller.forward();
          // Navigator.pop(context, 1000);
        },
      ),
    );
  }
}