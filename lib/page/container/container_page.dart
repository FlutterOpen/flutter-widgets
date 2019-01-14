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
            alignment: Alignment.bottomRight,
            height: 200,
            child: Text("this.alignment"),
          ),
          Container(
            color: YELLOW,
            height: 100.0,
            alignment: AlignmentDirectional.bottomEnd,
            child: Text(
              "HellH",
              textDirection: TextDirection.rtl,
            ),
          ),
          Container(
            color: BLUE_LIGHT,
            constraints: BoxConstraints.expand(height: 50.0),
            child: Text("BoxConstraints constraints"),
          ),
          Container(
            constraints: BoxConstraints.expand(height: 100.0),
            padding: EdgeInsets.all(10),
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                color: RED),
            child: Text("decoration: ShapeDecoration"),
          ),
          Container(
            constraints: BoxConstraints.expand(height: 200.0),
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [BLUE_LIGHT, YELLOW]),
                shape: BoxShape.circle),
            child: Text("decoration: BoxDecoration"),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 10),
            constraints: BoxConstraints.expand(height: 100, width: 100),
            color: BLUE_LIGHT,
            child: Text("this.transform"),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 10),
            constraints: BoxConstraints.expand(width: 100, height: 100),
            color: RED_LIGHT,
            transform: Matrix4.rotationY(pi / 4)..rotateX(pi / 4),
            child: Text("this.transform"),
          )
        ],
      )),
    );
  }
}
