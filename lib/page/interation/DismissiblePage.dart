///
/// Created by NieBin on 2019/6/12
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import "package:flutter_widgets/const/_const.dart";

class DismissiblePage extends StatefulWidget {
  @override
  _DismissibleState createState() => _DismissibleState();
}

class _DismissibleState extends State<DismissiblePage> {
  var _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.INTER_DISMISSIBLE),
      ),
      body: Dismissible(
          key: _key,
          child: Container(
            constraints: BoxConstraints.expand(height: 100),
            alignment: Alignment.center,
            child: Text(
              "Hello",
              style: TextStyle(color: TEXT_BLACK, fontSize: 20),
            ),
            color: BLUE,
          ),
          background: Container(
            color: RED_LIGHT,
            constraints: BoxConstraints.expand(height: 100, width: 40),
            alignment: Alignment.center,
            child: Text(
              "Remove",
              style: TextStyle(color: TEXT_BLACK_LIGHT, fontSize: 10),
            ),
          ),
          direction: DismissDirection.startToEnd,
          onDismissed: (direction) {
            print("Dissmiss");
            _key.currentState.dispose();
          }),
    );
  }
}
