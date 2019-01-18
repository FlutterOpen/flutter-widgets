///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/page_name_const.dart';
import 'package:flutter_widgets/const/_const.dart';

class RowColumnPage extends StatefulWidget {
  @override
  _RowColumnState createState() => _RowColumnState();
}

class _RowColumnState extends State<RowColumnPage> {
  Widget _rowMainAlign(mainAxisAlignment) => Container(
        color: RED,
        height: 50,
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          children: <Widget>[
            Text(
              "Open",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_NORMAL),
            ),
            Text(
              "Open",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_NORMAL),
            ),
            Text(
              "Open",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_NORMAL),
            ),
            Text(
              "Open",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_NORMAL),
            ),
          ],
        ),
      );

  Widget _rowMainAlignAll() => Column(
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "MainAxisAlignment.start",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_LARGE),
            ),
          ),
          _rowMainAlign(MainAxisAlignment.start),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "MainAxisAlignment.center",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_LARGE),
            ),
          ),
          _rowMainAlign(MainAxisAlignment.center),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "MainAxisAlignment.end",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_LARGE),
            ),
          ),
          _rowMainAlign(MainAxisAlignment.end),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "MainAxisAlignment.spaceBetween",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_LARGE),
            ),
          ),
          _rowMainAlign(MainAxisAlignment.spaceBetween),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "MainAxisAlignment.spaceEvenly",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_LARGE),
            ),
          ),
          _rowMainAlign(MainAxisAlignment.spaceEvenly),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "MainAxisAlignment.spaceAround",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_LARGE),
            ),
          ),
          _rowMainAlign(MainAxisAlignment.spaceAround),
        ],
      );

  Widget _crossAlign(crossAxisAlignment) => Container(
        color: BLUE_LIGHT,
        height: 80.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: crossAxisAlignment,
          textBaseline: TextBaseline.ideographic,
          children: <Widget>[
            Text(
              "Flutter",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_NORMAL),
            ),
            Text(
              "Flutter",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_NORMAL),
            ),
            Text(
              "Flutter",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_NORMAL),
            ),
            Text(
              "Flutter",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_NORMAL),
            ),
          ],
        ),
      );

  Widget _crossBaseline(crossAxisAlignment, TextBaseline baseline) => Container(
        color: BLUE_LIGHT,
        height: 80.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: crossAxisAlignment,
          textBaseline: baseline,
          children: <Widget>[
            Text(
              "Flutter",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_SMALL),
            ),
            Text(
              "Flutter",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_NORMAL),
            ),
            Text(
              "Flutter",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_LARGE),
            ),
            Text(
              "Flutter",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_NORMAL),
            ),
          ],
        ),
      );

  Widget _crossAlignAll() => Column(
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "CrossAxisAlignment.center",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_LARGE),
            ),
          ),
          _crossAlign(CrossAxisAlignment.center),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "CrossAxisAlignment.end",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_LARGE),
            ),
          ),
          _crossAlign(CrossAxisAlignment.end),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "CrossAxisAlignment.start",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_LARGE),
            ),
          ),
          _crossBaseline(CrossAxisAlignment.start, null),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "CrossAxisAlignment.baseline.ideographic",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_LARGE),
            ),
          ),
          _crossBaseline(CrossAxisAlignment.baseline, TextBaseline.ideographic),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "CrossAxisAlignment.stretch",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_LARGE),
            ),
          ),
          _crossBaseline(CrossAxisAlignment.stretch, null)
        ],
      );

  Widget _mainSize(mainSize) => Container(
      color: mainSize == MainAxisSize.min ? YELLOW : RED_LIGHT,
      child: Row(
        mainAxisSize: mainSize,
        children: <Widget>[
          Text(
            "Nie",
            style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_SMALL),
          ),
          Text(
            "Nie",
            style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_NORMAL),
          ),
          Text(
            "Nie",
            style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_LARGE),
          ),
          Text(
            "Nie",
            style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_NORMAL),
          ),
        ],
      ));

  Widget _rowVertical(direct) => Container(
        color: direct == VerticalDirection.down ? BLUE_DEEP : GREEN,
        height: 100,
        child: Column(
          verticalDirection: direct,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              "Bin",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_SMALL),
            ),
            Text(
              "Bin",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_SMALL),
            ),
            Text(
              "Bin",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_LARGE),
            ),
            Text(
              "bin",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_LARGE),
            ),
          ],
        ),
      );

  Widget _rowDirection(textDirect) => Container(
        color: textDirect == TextDirection.ltr ? RED_LIGHT : PURPLE,
        child: Row(
          textDirection: textDirect,
          children: <Widget>[
            Text(
              "Bin",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_SMALL),
            ),
            Text(
              "Bin",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_SMALL),
            ),
            Text(
              "Bin",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_LARGE),
            ),
            Text(
              "bin",
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_LARGE),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.ROW_COLUMN),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //our code here.
            Text(
              "Welcome to Flutter Open.",
              style: TextStyle(fontSize: TEXT_LARGE, color: GREEN),
            ),
            Text(
              "The developer is NieBin who is from China.",
              style: TextStyle(fontSize: TEXT_NORMAL, color: BLUE_DEEP),
            ),
            _rowMainAlignAll(),
            _crossAlignAll(),
            _mainSize(MainAxisSize.min),
            _mainSize(MainAxisSize.max),
            _rowVertical(VerticalDirection.down),
            _rowVertical(VerticalDirection.up),
            _rowDirection(TextDirection.ltr),
            _rowDirection(TextDirection.rtl),
          ],
        ),
      ),
    );
  }
}
