///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class SnackPage extends StatefulWidget {
  @override
  _SnackState createState() => _SnackState();
}

class _SnackState extends State<SnackPage> {
  GlobalKey<ScaffoldState> _key = GlobalKey();

  Widget _snackSample() => SnackBar(
        content: Text(
          "You have a message!",
          style: TextStyle(
            color: TEXT_BLACK,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: BLUE_LIGHT,
      );

  Widget _snackAction() => SnackBar(
        content: Text(
          "Test the action in the SnackBar.",
          style: TextStyle(
            color: TEXT_BLACK,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        action: SnackBarAction(
          label: "I Know!",
          textColor: Colors.white,
          disabledTextColor: TEXT_BLACK_LIGHT,
          onPressed: () {
            print("I know you are testing the action in the SnackBar!");
          },
        ),
        backgroundColor: BLUE_LIGHT,
      );

  Widget _snackDuration() => SnackBar(
        content: Text(
          "You have a message!",
          style: TextStyle(
            color: TEXT_BLACK,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: BLUE_LIGHT,
        duration: Duration(milliseconds: 100),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        appBar: AppBar(
          title: Text(PageName.SNACK_BAR),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              final bar = _snackAction();
              _key.currentState.showSnackBar(bar);
            },
            child: Text("Show the snack bar"),
            color: RED,
          ),
        ));
  }
}
