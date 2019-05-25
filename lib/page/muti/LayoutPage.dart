///
/// Created by NieBin on 2019/5/26
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class LayoutPage extends StatefulWidget {
  @override
  LayoutState createState() => LayoutState();
}

class LayoutState extends State<LayoutPage> {
  Widget _builder(BuildContext context, BoxConstraints constraints) =>
      Container(
        constraints:
            BoxConstraints.expand(height: 100, width: constraints.maxWidth),
        color: RED,
      );

  Widget _listView() => ListView(
        shrinkWrap: true,
        itemExtent: 100,
        controller: ScrollController(initialScrollOffset: 100),
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(height: 100),
            color: RED,
          ),
          Container(
            constraints: BoxConstraints.expand(height: 100),
            color: BLUE,
          ),
          Container(
            constraints: BoxConstraints.expand(height: 100),
            color: YELLOW,
          ),
          Container(
            constraints: BoxConstraints.expand(height: 100),
            color: RED_LIGHT,
          ),
          Container(
            constraints: BoxConstraints.expand(height: 100),
            color: BLUE_DEEP,
          ),
          Container(
            constraints: BoxConstraints.expand(height: 100),
            color: RED,
          ),
          Container(
            constraints: BoxConstraints.expand(height: 100),
            color: BLUE,
          ),
          Container(
            constraints: BoxConstraints.expand(height: 100),
            color: YELLOW,
          ),
          Container(
            constraints: BoxConstraints.expand(height: 100),
            color: RED_LIGHT,
          ),
          Container(
            constraints: BoxConstraints.expand(height: 100),
            color: BLUE_DEEP,
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: _listView(),
    );
  }
}
