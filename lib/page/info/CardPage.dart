///
/// Created by NieBin on 2019/5/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class CardPage extends StatefulWidget {
  @override
  CardState createState() => CardState();
}

class CardState extends State<CardPage> {
  Widget _card(double elevation) => Container(
        constraints: BoxConstraints.expand(height: 100),
        child: Card(
          child: Center(
            child: Text("Hello"),
          ),
          color: RED_LIGHT,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          shape: Border(
              top: BorderSide(color: BLUE_LIGHT, width: 2),
              bottom: BorderSide(color: YELLOW, width: 3)),
          clipBehavior: Clip.antiAlias,
          elevation: elevation,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.CARD),
      ),
      body: Column(
        children: <Widget>[
          _card(1),
          _card(5),
          _card(10),
        ],
      ),
    );
  }
}
//({
//Key key,
//this.color,
//this.elevation = 1.0,
//this.shape,
//this.margin = const EdgeInsets.all(4.0),
//this.clipBehavior = Clip.none,
//this.child,
//this.semanticContainer = true,
//})
