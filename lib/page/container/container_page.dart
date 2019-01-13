///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';
import 'dart:math';

class ContainerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContainerState();
}

class _ContainerState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.CONTAINER),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: RED,
            child: Text("Hello world"),
          ),
          Container(
            color: GREEN,
            child: Text("Color color"),
          ),
          Container(
            color: YELLOW,
            padding:
                EdgeInsets.only(left: 10.0, right: 50.0, top: 10, bottom: 30),
            child: Container(
              color: BLUE_DEEP,
              child: Text("this.padding"),
            ),
          ),
          Container(
            width: 200.0,
            height: 100.0,
            color: GREEN,
            child: Text("width = 200 , height = 100"),
          ),
          Container(
            color: RED,
            child: Container(
              margin:
                  EdgeInsets.only(left: 10.0, right: 50.0, top: 10, bottom: 30),
              color: GREEN,
              child: Text("this.margin"),
            ),
          ),
          Container(
              color: BLUE_LIGHT,
              alignment: AlignmentDirectional.topStart,
              height: 200,
              width: 200,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Text("Hellowww1"),
                  Text("Hellowww2"),
                ],
              )),
        ],
      )),
    );
  }
}
