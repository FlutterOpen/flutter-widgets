///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class StackPage extends StatefulWidget {
  @override
  _StackState createState() => _StackState();
}

class _StackState extends State<StackPage> {
  Widget _simpleStack() => Container(
        constraints: BoxConstraints.expand(height: 160),
        child: Stack(
          children: <Widget>[
            Container(
              color: RED,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              color: BLUE_LIGHT,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 60),
              color: PURPLE,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 50, horizontal: 80),
              color: TEXT_BLACK_LIGHT,
            ),
          ],
        ),
      );

  Widget _alignStack() => Container(
        margin: EdgeInsets.only(top: 10),
        color: BLUE_DEEP,
        constraints: BoxConstraints.expand(height: 160),
        child: Stack(
          alignment: Alignment.centerRight,
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              color: Colors.white,
            ),
            Container(
              height: 60,
              width: 60,
              color: TEXT_BLACK_LIGHT,
            ),
          ],
        ),
      );

  Widget _textLeftStack() => Container(
        margin: EdgeInsets.only(top: 10),
        color: GREEN,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        constraints: BoxConstraints.expand(height: 60),
        child: Stack(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Text(
              "Flutter Open drawed from left to rigt",
              style: TextStyle(color: TEXT_BLACK_LIGHT),
            )
          ],
        ),
      );

  Widget _textRightStack() => Container(
        margin: EdgeInsets.only(top: 10),
        color: PURPLE,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        constraints: BoxConstraints.expand(height: 60),
        child: Stack(
          textDirection: TextDirection.rtl,
          children: <Widget>[
            Text(
              "Flutter Open drawed from right to left",
              style: TextStyle(color: TEXT_BLACK_LIGHT),
            )
          ],
        ),
      );

  Widget _fitStack() => Container(
      color: PURPLE,
      margin: EdgeInsets.only(top: 10),
      constraints: BoxConstraints.expand(height: 220),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(height: 60),
            color: RED,
            child: Stack(
              fit: StackFit.loose,
              children: <Widget>[
                Container(
                  color: BLUE_DEEP,
                  child: Text(
                    "StackFit.loose",
                    style: TextStyle(color: TEXT_BLACK_LIGHT, fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          Container(
            constraints: BoxConstraints.expand(height: 60),
            color: GREEN,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Container(
                  child: Text(
                    "StackFit.expand",
                    style: TextStyle(color: TEXT_BLACK_LIGHT, fontSize: 20),
                  ),
                  color: BLUE_LIGHT,
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            constraints: BoxConstraints.expand(height: 60),
            color: RED_LIGHT,
            child: Stack(
              fit: StackFit.passthrough,
              children: <Widget>[
                Container(
                  child: Text(
                    "StackFit.passthrough",
                    style: TextStyle(color: TEXT_BLACK_LIGHT, fontSize: 20),
                  ),
                  color: GREEN,
                )
              ],
            ),
          )
        ],
      ));

  Widget _overVisibleStack() => Container(
        margin: EdgeInsets.only(top: 10),
        color: BLUE_LIGHT,
        constraints: BoxConstraints.expand(height: 40),
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Positioned(
              top: 15,
              child: Text(
                "Flutter Open is too long to draw here, it will be visible.\n666666666666666666666666666666666",
                style: TextStyle(color: TEXT_BLACK_LIGHT),
              ),
            )
          ],
        ),
      );

  Widget _overClipStack() => Container(
        margin: EdgeInsets.only(top: 10),
        color: BLUE_LIGHT,
        constraints: BoxConstraints.expand(height: 40),
        child: Stack(
          overflow: Overflow.clip,
          children: <Widget>[
            Positioned(
              top: 15,
              child: Text(
                "Flutter Open is too long to draw here, it will be cliped.\n666666666666666666666666666666666",
                style: TextStyle(color: TEXT_BLACK_LIGHT),
              ),
            )
          ],
        ),
      );

  Widget _posStack() => Container(
        margin: EdgeInsets.only(top: 10),
        color: TEXT_BLACK_LIGHT,
        constraints: BoxConstraints.expand(height: 100),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 10,
              top: 10,
              height: 60,
              width: 60,
              child: Container(
                color: RED,
              ),
            ),
            Positioned(
              right: 200,
              top: 30,
              height: 60,
              width: 60,
              child: Container(
                color: BLUE_DEEP,
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              height: 60,
              width: 60,
              child: Container(
                color: GREEN,
              ),
            ),

          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.STACK),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
//our code.
          _simpleStack(),
          _alignStack(),
          _textLeftStack(),
          _textRightStack(),
          _fitStack(),
          _overVisibleStack(),
          _overClipStack(),
          _posStack(),
          SizedBox(height: 600)
        ],
      )),
    );
  }
}
