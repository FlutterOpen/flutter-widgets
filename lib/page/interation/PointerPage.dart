///
/// Created by NieBin on 2019/6/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class PointerPage extends StatefulWidget {
  @override
  _PointerState createState() => _PointerState();
}

class _PointerState extends State<PointerPage> {
  Widget _absorb() => Container(
        constraints: BoxConstraints.expand(height: 100),
        child: AbsorbPointer(
          child: GestureDetector(
            onTap: () {
              print("You have touch me.");
            },
            child: Text(
                "It can absorb the pointer touching when you click it. but you should set the parameter of the absorbing to the 'true'"),
          ),
          absorbing: true,
        ),
        color: RED_LIGHT,
      );

  Widget _ignore() => Container(
        color: BLUE_LIGHT,
        child: IgnorePointer(
          child: GestureDetector(
            onTap: () {
              print("Hello world");
            },
            child: Text(
                "IgnorePointer,you can change the paramter of the ignoring to see the effect."),
          ),
          ignoring: true,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.INTER_POINTER),
      ),
      body: Column(
        children: <Widget>[
          _absorb(),
          _ignore(),
        ],
      ),
    );
  }
}
