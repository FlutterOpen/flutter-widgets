///
/// Created by NieBin on 2019/5/22
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class IndexStackPage extends StatefulWidget {
  @override
  IndexStackState createState() => IndexStackState();
}

class IndexStackState extends State<IndexStackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(PageName.INDEX_STACK)),
      body: IndexedStack(
        ///this can show only one child,so you should assign a value to index.
        alignment: Alignment.centerRight,
        index: 2, //
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(height: 100, width: 100),
            color: RED,
          ),
          Container(
            constraints: BoxConstraints.expand(height: 100, width: 200),
            color: YELLOW,
          ),
          Container(
            constraints: BoxConstraints.expand(height: 100, width: 150),
            color: BLUE_DEEP,
          ),
        ],
      ),
    );
  }
}
