///
/// Created by NieBin on 2019/5/22
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class ExpandPage extends StatefulWidget {
  @override
  ExpandState createState() => ExpandState();
}

class ExpandState extends State<ExpandPage> {
  Widget _normal() => Row(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Text(
              "Hello world dsdsdsdsdsdsdsdsssssssssssssss",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text("Hello"),
          )
        ],
      );

  /// when you use these code, you may get some bad display on you screen.
  Widget _abnormal() => Row(
        children: <Widget>[
          Text(
            "Hello world dsdsdsdsdsdsdsdsssssssssssssss",
            style: TextStyle(fontSize: 20),
          ),
          Text("Hello"),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.EXPANDED),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _normal(),
            _abnormal(),
          ],
        ),
      ),
    );
  }
}
