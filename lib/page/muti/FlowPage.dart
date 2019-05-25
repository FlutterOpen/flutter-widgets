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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.FLOW),
      ),
      body: Flow(
        delegate: MFlowDelegate(),
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(height: 100),
            color: RED,
          ),
          Container(
            constraints: BoxConstraints.expand(height: 100, width: 100),
            alignment: Alignment.center,
            color: BLUE,
          )
        ],
      ),
    );
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
