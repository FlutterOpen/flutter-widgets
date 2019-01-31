///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class AlertDialogPage extends StatefulWidget {
  @override
  _AlertDialogState createState() => _AlertDialogState();
}

class _AlertDialogState extends State<AlertDialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(PageName.ALERT_DIALOG),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //our code.
              AlertDialog(
                  title: Text("Hello world!"),
                  titlePadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                  titleTextStyle: TextStyle(color: RED, fontSize: 30),
                  content: Text(
                    "Let's start for the first time.",
                  ),
                  contentTextStyle: TextStyle(color: PURPLE, fontSize: 30),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        print("Click it again.");
                      },
                      child: Icon(Icons.airplanemode_active),
                      color: TEXT_BLACK_LIGHT,
                    ),
                    FlatButton(
                      onPressed: () {
                        print("Click it again.");
                      },
                      child: Text(
                        "Cancel",
                        style: TextStyle(fontSize: 20),
                      ),
                      color: TEXT_BLACK_LIGHT,
                    ),
                  ],
                  backgroundColor: BLUE_LIGHT,
                  elevation: 10,
                  shape: StadiumBorder(
                      side: BorderSide(
                    color: TEXT_BLACK_LIGHT,
                    width: 1,
                  ))),
              SizedBox(height: 100),
            ],
          ),
        ));
  }
}
//this.title,
//this.titlePadding,
//this.titleTextStyle,
//this.content,
//this.contentPadding = const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
//this.contentTextStyle,
//this.actions,
//this.backgroundColor,
//this.elevation,
//this.semanticLabel,
//this.shape,
