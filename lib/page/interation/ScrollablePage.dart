///
/// Created by NieBin on 2019/6/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class ScrollablePage extends StatefulWidget {
  @override
  _ScrollableState createState() => _ScrollableState();
}

class _ScrollableState extends State<ScrollablePage> {
  Widget _scrollBuilder(BuildContext context, position) => Container(
        child: Column(
          children: _list(),
        ),
      );

  List<Widget> _list() {
    List<Widget> list = List();
    for (int i = 0; i < 20; i++) {
      list.add(Container(
        constraints: BoxConstraints.expand(height: 100),
        color: i % 2 == 0 ? RED_LIGHT : BLUE_LIGHT,
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    //it scrollable failed, so if you want to scroll a view, you can consider to use the CustomScrollView
    return Scrollable(viewportBuilder: _scrollBuilder);
  }
}
