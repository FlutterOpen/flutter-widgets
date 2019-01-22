///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class PlaceHolderPage extends StatefulWidget {
  @override
  _PlaceHolderState createState() => _PlaceHolderState();
}

class _PlaceHolderState extends State<PlaceHolderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.PLACE_HOLDER),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //our code here.
            Container(
              height: 100,
              child: Placeholder(),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              child: Placeholder(color: RED),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              child: Placeholder(
                color: GREEN,
                strokeWidth: 20,
              ),
            ),
            SizedBox(height: 20),
            Placeholder(
              color: RED,
              strokeWidth: 4,
              fallbackWidth: 10,
              fallbackHeight: 100,
            ),
            SizedBox(height: 20),
            Container(
              constraints: BoxConstraints.expand(height: 100, width: 100),
              child: Placeholder(
                color: BLUE_DEEP,
                strokeWidth: 4,
                fallbackWidth: 10,
                fallbackHeight: 100,
              ),
            ),
            SizedBox(height: 600)
          ],
        ),
      ),
    );
  }
}
