///
/// Created by NieBin on 2019/5/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class TooltipPage extends StatefulWidget {
  @override
  TooltipState createState() => TooltipState();
}

class TooltipState extends State<TooltipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(PageName.TOOLTIP),
        ),
        body: Tooltip(
          message: "Good morning,sir!",
          child: Text("Hello world"),
          preferBelow: true,
          padding: EdgeInsets.symmetric(vertical: 10),
        ));
  }
}
