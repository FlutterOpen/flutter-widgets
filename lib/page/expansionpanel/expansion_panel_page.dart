///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class ExpansionPage extends StatefulWidget {
  @override
  _ExpansionState createState() => _ExpansionState();
}

class _ExpansionState extends State<ExpansionPage> {
  var isA = true;
  var isB = true;

  Widget _expan() => ExpansionPanelList(
        children: [
          ExpansionPanel(
            headerBuilder: (context, isE) => Container(
                  child: Text("A"),
                  alignment: Alignment.centerLeft,
                ),
            body: Container(
              color: BLUE_LIGHT,
              constraints: BoxConstraints.expand(height: 100),
              alignment: Alignment.center,
              child: Text("AAAAA"),
            ),
            isExpanded: isA,
          ),
          ExpansionPanel(
            headerBuilder: (context, isE) => Container(
                  child: Text("B"),
                  alignment: Alignment.centerLeft,
                ),
            body: Container(
              color: BLUE_LIGHT,
              constraints: BoxConstraints.expand(height: 100),
              alignment: Alignment.center,
              child: Text("BBBBB"),
            ),
            isExpanded: isB,
          ),
        ],
        expansionCallback: (index, isE) {
          print("index: $index, isE: $isE");
          setState(() {
            if (index == 0) {
              isA = !isE;
            } else {
              isB = !isE;
            }
          });
        },
      );

  Widget _radio() => ExpansionPanelList.radio(
        children: [
          ExpansionPanelRadio(
            value: "a",
            headerBuilder: (context, isE) => Container(
                  child: Text("A"),
                  alignment: Alignment.centerLeft,
                ),
            body: Container(
              color: BLUE_LIGHT,
              constraints: BoxConstraints.expand(height: 100),
              alignment: Alignment.center,
              child: Text("AAAAA"),
            ),
          ),
          ExpansionPanelRadio(
            value: "b",
            headerBuilder: (context, isE) => Container(
                  child: Text("B"),
                  alignment: Alignment.centerLeft,
                ),
            body: Container(
              color: BLUE_LIGHT,
              constraints: BoxConstraints.expand(height: 100),
              alignment: Alignment.center,
              child: Text("BBBBB"),
            ),
          ),
        ],
        expansionCallback: (index, isE) {
          print("index: $index, isE: $isE");
          setState(() {});
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.EXPANSION_PANEL),
      ),
      body: Container(
          constraints: BoxConstraints.expand(),
          child: SingleChildScrollView(
              child: Column(
            children: <Widget>[
              _expan(),
              _radio()
            ],
          ))),
    );
  }
}
