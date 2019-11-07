import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class XTCourse extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new XTCourseState();
}

class XTCourseState extends State<XTCourse> with AutomaticKeepAliveClientMixin {
  int count = 0;
  var _imgPath;
  void addCount() {
    setState(() {
      this.count++;
    });
  }

  _photoPicker() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (image != null) _imgPath = image;
    });
  }

  _camaraPicker() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      if (image != null) _imgPath = image;
    });
  }

  Widget _ImageView(imgPath) {
    if (imgPath == null) {
      return Center(
        child: Text("请选择图片或拍照"),
      );
    } else {
      return Image.file(
        imgPath,
      );
    }
  }

  bool get wantKeepAlive => true;
  @override
  void initState() {
    print("course init");
    super.initState();
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0000ff),
        centerTitle: true,
        elevation: 1.0,
        leading: RaisedButton(
          onPressed: _camaraPicker,
          child: Icon(Icons.camera_alt),
          color: Color(0xff0000ff),
        ),
        // title: Center(child: Icon(Icons.photo_camera),),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: RaisedButton(
              onPressed: _photoPicker,
              child: Icon(Icons.photo_camera),
              color: Color(0xff0000ff),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Second: $count', style: TextStyle(fontSize: 30)),
            _ImageView(_imgPath),
          ],
        ), 
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addCount,
        child: Icon(Icons.add),
      ),
    );
  }
}