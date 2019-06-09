///
/// Created by NieBin on 2019/6/9
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class DefaultTextPage extends StatefulWidget {
  @override
  DefaultState createState() => DefaultState();
}

class DefaultState extends State<DefaultTextPage> {
  Color _color = RED_LIGHT;

  Widget _defaultText() => Column(
        children: <Widget>[
          AnimatedDefaultTextStyle(
            child: Text(
              "Default Text",
              style: TextStyle(fontSize: 20),
            ),
            style: TextStyle(color: _color),
            duration: Duration(seconds: 1),
          ),
          FloatingActionButton(
            child: Text("Click"),
            onPressed: () {
              setState(() {
                if (_color == RED_LIGHT) {
                  _color = BLUE_DEEP;
                } else {
                  _color = RED_LIGHT;
                }
              });
            },
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.ANIM_DEFAULT_TEXT),
      ),
      body: Column(
        children: <Widget>[
          _defaultText(),
        ],
      ),
    );
  }
}
