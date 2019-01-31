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

class _BottomSheetState extends State<BottomSheetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.BOTTOM_SHEET),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //our code.
//            BottomSheet(
//              onClosing: () {
//                print("You are clicking this type.");
//              },
//              builder: (context) => Container(
//                    color: RED,
//                    constraints: BoxConstraints.expand(height: 100),
//                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//                    child: Text("Click"),
//                  ),
//              enableDrag: true,
//            ),
            FlatButton(
                onPressed: () {
                  print("Show the dialog.");
                  showBottomSheet(
                    context: context,
                    builder: (context) => Container(
                          color: BLUE_LIGHT,
                          constraints: BoxConstraints.expand(height: 100),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Text("Click"),
                        ),
                  );
                },
                child: Text("Click Me.")),
            SizedBox(height: 600)
          ],
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
