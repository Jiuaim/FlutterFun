import 'package:flutter/material.dart';

class XTTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return XTTextFieldState();
  }
}

class XTTextFieldState extends State<XTTextField> {
  TextEditingController _controller;
  String _text = "text";

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_text),
        leading: RaisedButton(
          onPressed: () => {
            Navigator.pop(context, 3000)
          },
          child: Icon(Icons.camera_alt),
          color: Color(0xff0000ff),
        ),
      ),
      body: Column(children: <Widget>[
        TextField(
          controller: _controller,
          onChanged: (text) => {
            setState(() {
              _text = text;
            })
          },
        ),
        Text(_text),
      ]) 
    );
  }
}