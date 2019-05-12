///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class ChipPage extends StatefulWidget {
  @override
  _ChipState createState() => _ChipState();
}

class _ChipState extends State<ChipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(PageName.CHIP),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: InputChip(
            avatar: Image.asset(PageImage.PIC_01),
            label: Text(
              "Text",
              style: TextStyle(color: RED),
            ),
            pressElevation: 1,
            labelPadding: EdgeInsets.symmetric(horizontal: 20),
            deleteIcon: Icon(Icons.airplanemode_active),
            deleteIconColor: RED_LIGHT,

            isEnabled: true,
            clipBehavior: Clip.antiAlias,
            backgroundColor: BLUE_LIGHT,
            deleteButtonTooltipMessage: "Hhhh--gehhh",
            onPressed: () {
              print("Hello");
            },
            materialTapTargetSize: MaterialTapTargetSize.padded,

            tooltip: "Hello world",
//            onSelected: (isS) {
//              print("world");
//            },
            onDeleted: () {
              print("onDeleted");
            },
          ),
        ));
  }
}
//({
//Key key,
//this.avatar,
//@required this.label,
//this.labelStyle,
//this.labelPadding,
//this.deleteIcon,
//this.onDeleted,
//this.deleteIconColor,
//this.deleteButtonTooltipMessage,
//this.shape,
//this.clipBehavior = Clip.none,
//this.backgroundColor,
//this.padding,
//this.materialTapTargetSize,
//})  : assert(label != null),
//
