///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class SimpleDialogPage extends StatefulWidget {
  @override
  _DialogState createState() => _DialogState();
}

class _DialogState extends State<SimpleDialogPage> {
  Widget _padDialog() => SimpleDialog(
        title: Text(
          "Do you know why?",
          textAlign: TextAlign.center,
        ),
        titlePadding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        children: <Widget>[
          Text(
            "Sometime,we learn very well,because we want to it.",
            textAlign: TextAlign.center,
          )
        ],
        contentPadding: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 20,
        ),
      );

  Widget _colorDialog() => SimpleDialog(
        title: Text(
          "Message",
          textAlign: TextAlign.center,
        ),
        children: <Widget>[
          Text(
            "You must learn it carefully.",
            textAlign: TextAlign.center,
          ),
        ],
        backgroundColor: RED,
        elevation: 4,
      );

  Widget _shapeDialog() => SimpleDialog(
        title: Text(
          "Be careful!",
          textAlign: TextAlign.center,
        ),
        children: <Widget>[
          Text(
            "If you write a message, you should care about the message.",
            textAlign: TextAlign.center,
          ),
        ],
        backgroundColor: BLUE_LIGHT,
        elevation: 4,
        shape: StadiumBorder(
          side: BorderSide(
            style: BorderStyle.none,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.SIMPLE_DIALOG),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SimpleDialog(
              title: Text("What do we do?"),
              children: [
                Text("This is our tutorial about the SimpleDialog."),
              ],
            ),
            _padDialog(),
            _colorDialog(),
            _shapeDialog(),
            SizedBox(height: 600),
          ],
        ),
      ),
    );
  }
}
//SimpleDialog(
//title: Text(
//"Hello world~",
//textAlign: TextAlign.center,
//),
//titlePadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//contentPadding:
//EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//backgroundColor: GREEN,
//elevation: 20,
//shape: StadiumBorder(
//side: BorderSide(style: BorderStyle.none),
//),
//children: <Widget>[
//Text(
//"This is the content of this dialog.",
//textAlign: TextAlign.center,
//),
//],
//),
