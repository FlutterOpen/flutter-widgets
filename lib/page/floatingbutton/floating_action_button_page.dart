///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class FloatingActionButtonPage extends StatefulWidget {
  @override
  _FloatingActionButtonState createState() => _FloatingActionButtonState();
}

class _FloatingActionButtonState extends State<FloatingActionButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.FLOATING_ACTION_BUTTON),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: FloatingActionButton(
                onPressed: () {
                  print("click");
                },
                child: Icon(Icons.airplanemode_active),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              constraints: BoxConstraints.expand(height: 80),
              child: FloatingActionButton(
                onPressed: () {
                  print("Click the button");
                },
                tooltip: "Long-press, so what do you want?",
                backgroundColor: PURPLE,
                child: Icon(Icons.adb),
              ),
            ),
            //our code here.
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  print("Click the button");
                },
                backgroundColor: BLUE,
                mini: true,
                child: Icon(
                  Icons.adb,
                ),
              ),
            ),
            SizedBox(
              height: 600,
            )
          ],
        ),
      ),
    );
  }
}
