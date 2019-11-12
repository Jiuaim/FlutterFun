import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class XTFile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return XTFileState();
  }
}

class XTFileState extends State<XTFile> {
  int _count;

  addCount() async {
    print('addCount = $_count');
    setState(() {
      _count += 1;
    });

    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = File('$dir/counter.txt');
    await file.writeAsString('$_count');
  }

  Future<int> _readCount() async {
    try {
      String dir = (await getApplicationDocumentsDirectory()).path;
      File file = File('$dir/counter.txt');
      String content = await file.readAsString();
      return int.parse(content);
    } on FileSystemException {
      return 0;
    }
  }

  @override
  void initState() {
    _readCount().then((value) {
      setState(() {
        _count = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: RaisedButton(
          onPressed: () {
            Navigator.pop(context, '2000');
          },
          child: Icon(Icons.camera_alt),
          color: Color(0xff0000ff),
        ),
      ),
      body: Center(
        child: Text(_count.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addCount,
        child: Icon(Icons.add),
      ),
    );
  }
}