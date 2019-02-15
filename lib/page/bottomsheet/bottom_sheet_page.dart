///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class BottomSheetPage extends StatefulWidget {
  @override
  _BottomSheetState createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheetPage>
    with SingleTickerProviderStateMixin {
  var _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text(PageName.BOTTOM_SHEET),
      ),
      body: Container(
        child: FlatButton(
            onPressed: () {
              print("Hello");
              _key.currentState.showBottomSheet(
                (context) => Container(
                      constraints: BoxConstraints.expand(height: 100),
                      color: GREEN,
                    ),
              );
            },
            child: Text("Hello")),
      ),
      bottomSheet: BottomSheet(
        onClosing: () {
          print("Close");
        },
        builder: (context) => Container(
              decoration: ShapeDecoration(
                color: RED_LIGHT,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
              ),
              constraints: BoxConstraints.expand(height: 240),
              child: ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    alignment: Alignment.center,
                    child: Text(
                      "Select lanuage.",
                      style: TextStyle(color: TEXT_BLACK, fontSize: 30),
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: TEXT_BLACK_LIGHT,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "English.",
                      style: TextStyle(color: TEXT_BLACK_LIGHT, fontSize: 20),
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: TEXT_BLACK_LIGHT,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Chinese.",
                      style: TextStyle(color: TEXT_BLACK_LIGHT, fontSize: 20),
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: TEXT_BLACK_LIGHT,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "India.",
                      style: TextStyle(color: TEXT_BLACK_LIGHT, fontSize: 20),
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: TEXT_BLACK_LIGHT,
                  ),
                ],
              ),
            ),
      ),
    );
  }
}

///   this.animationController,
//    this.enableDrag = true,
//    this.elevation = 0.0,
//    @required this.onClosing,
//    @required this.builder
