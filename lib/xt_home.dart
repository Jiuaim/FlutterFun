import 'package:flutter/material.dart';

class XTHome extends StatefulWidget {
  @override 
  State<StatefulWidget> createState() => new XTHomeState();
}

class XTHomeState extends State<XTHome> with AutomaticKeepAliveClientMixin {

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
      appBar: null,
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