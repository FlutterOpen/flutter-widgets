///
/// Created by NieBin on 2019/6/11
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import "package:flutter_widgets/const/_const.dart";

class DraggablePage extends StatefulWidget {
  @override
  _DragState createState() => _DragState();
}

class _DragState extends State<DraggablePage> {
  String _value = "";

  Widget _draggable(String _data) => Draggable<String>(
        child: Text(
          "$_data",
          style: TextStyle(color: RED_LIGHT, fontSize: 30),
        ),
        feedback: Text(
          "$_data",
          style: TextStyle(color: BLUE_DEEP),
        ),
        childWhenDragging: Container(),
        maxSimultaneousDrags: 1,
        onDragCompleted: () {
          print("Complete.");
        },
        onDragStarted: () {
          print("Start");
        },
        onDraggableCanceled: (v, off) {
          print("Cancel");
        },
        data: _data,
      );

  Widget _target() => DragTarget<String>(
        builder: (context, List<String> candidateData, rejectedData) =>
            Container(
              constraints: BoxConstraints.expand(height: 100),
              color: GREEN,
              alignment: Alignment.center,
              child: Text(
                candidateData.length > 0 ? candidateData[0] : _value,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
        onAccept: (value) {
          print("Accept value= $value");
          _value = value;
        },
        onLeave: (value) {
          print("leave = $value");
        },
        onWillAccept: (value) {
          print("Will Accept: value = $value");
          return true;
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(PageName.INTER_DRAG),
        ),
        body: Column(
          children: <Widget>[
            Text(" You should drag the text and put it into the green area,"
                "then you can see the text changed."),
            _draggable("Hello"),
            _draggable("World"),
            _target(),
          ],
        ));
  }
}
