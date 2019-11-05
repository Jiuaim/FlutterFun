import 'package:flutter/material.dart';

class XTHome extends StatefulWidget {
  @override 
  State<StatefulWidget> createState() => new XTHomeState();
}

class XTHomeState extends State<XTHome> with AutomaticKeepAliveClientMixin {
  final topBar = AppBar(
    backgroundColor: Color(0xffff0000),
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(Icons.camera_alt),
    title: Center(child: Icon(Icons.search),),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),),
    ],
  );

  int count = 0;
  void addCount() {
    setState(() {
      this.count++;
    });
  }

  bool get wantKeepAlive => true;
  @override
  void initState() {
    print("home init");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      backgroundColor: Colors.red,
      body: Center(
          child: Text('First: $count', style: TextStyle(fontSize: 30))
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addCount,
        child: Icon(Icons.add),
      )
    );
  }
}