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
              title: Text(
                "Hello world~",
                textAlign: TextAlign.center,
              ),
              titlePadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              backgroundColor: GREEN,
              elevation: 20,
              shape: StadiumBorder(
                side: BorderSide(style: BorderStyle.none),
              ),
              children: <Widget>[
                Text(
                  "This is the content of this dialog.",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 600)
          ],
        ),
      ),
    );
  }
}
