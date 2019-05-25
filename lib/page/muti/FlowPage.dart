///
/// Created by NieBin on 2019/5/24
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class FlowPage extends StatefulWidget {
  @override
  FlowState createState() => FlowState();
}

class FlowState extends State<FlowPage> {
  Widget _flow() => Flow(
        delegate: MFlowDelegate(),
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(height: 100, width: 200),
            color: RED,
          ),
          Container(
            constraints: BoxConstraints.expand(height: 100, width: 100),
            alignment: Alignment.center,
            color: BLUE,
          )
        ],
      );

  ///  this.direction = Axis.horizontal,
//    this.alignment = WrapAlignment.start,
//    this.spacing = 0.0,
//    this.runAlignment = WrapAlignment.start,
//    this.runSpacing = 0.0,
//    this.crossAxisAlignment = WrapCrossAlignment.start,
//    this.textDirection,
//    this.verticalDirection = VerticalDirection.down,

  Widget _wrap() => Wrap(
        spacing: 8.0,
        // gap between adjacent chips
        runSpacing: 10.0,
        // gap between lines
        alignment: WrapAlignment.spaceAround,
        direction: Axis.horizontal,
        runAlignment: WrapAlignment.spaceEvenly,
        crossAxisAlignment: WrapCrossAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: Text('AH')),
            label: Text('Hamilton'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: Text('ML')),
            label: Text('Lafayette'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: Text('HM')),
            label: Text('Mulligan'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: Text('JL')),
            label: Text('Laurens'),
          ),
        ],
      );

//    this.children = const <TableRow>[],
//    this.columnWidths,
//    this.defaultColumnWidth = const FlexColumnWidth(1.0),
//    this.textDirection,
//    this.border,
//    this.defaultVerticalAlignment = TableCellVerticalAlignment.top,
//    this.textBaseline,
  Widget _table() => Table(
        border: TableBorder.all(color: RED, width: 1, style: BorderStyle.solid),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(children: [
            Container(
              constraints: BoxConstraints.expand(height: 100),
              alignment: Alignment.center,
              child: Text(
                "HHHH",
                textAlign: TextAlign.center,
              ),
            ),
            Text("HHHH"),
            Text("HHHH"),
            Text("HHHH"),
            Text("HHHH"),
          ]),
          TableRow(children: [
            Text("HHHH"),
            Text("HHHH"),
            Text("HHHH"),
            Text("HHHH"),
            Text("HHHH"),
          ]),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(PageName.FLOW),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(height: 400),
                child: _flow(),
              ),
              Container(
                constraints: BoxConstraints.expand(height: 100),
                child: _wrap(),
              ),
              Container(
                constraints: BoxConstraints.expand(height: 400),
                child: _table(),
              )
            ],
          ),
        ));
  }
}

class MFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    context.paintChild(0, transform: Matrix4.rotationZ(1));
    context.paintChild(1,
        transform: Matrix4.translationValues(100, 0, 0)..rotateZ(1));
  }

  @override
  bool shouldRepaint(MFlowDelegate oldDelegate) {
    return true;
  }
}
