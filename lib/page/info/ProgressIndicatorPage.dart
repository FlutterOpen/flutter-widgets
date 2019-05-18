///
/// Created by NieBin on 2019/5/17
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class ProgressIndicatorPage extends StatefulWidget {
  @override
  ProgressIndicatorState createState() => ProgressIndicatorState();
}

class ProgressIndicatorState extends State<ProgressIndicatorPage>
    with SingleTickerProviderStateMixin {
  var t = Tween(begin: BLUE, end: YELLOW);
  AnimationController _controller;
  var pro = Tween<double>(begin: 0.0, end: 1.0);
  var len = 0.0;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 10));
    pro.animate(_controller).addListener(() => setState(() {
          print("len = $len");
          len = _controller.value;
        }));
    _controller.forward();
  }

  Widget _lineIndicator() => Container(
        constraints: BoxConstraints.expand(width: 100, height: 10),
        child: LinearProgressIndicator(
          backgroundColor: BLUE,
          value: len,
        ),
      );

  Widget _circleIndicator() => Container(
        constraints: BoxConstraints.expand(width: 100, height: 100),
        child: CircularProgressIndicator(
          value: len,
          backgroundColor: YELLOW,
//          valueColor: t.animate(_controller),
          strokeWidth: 10,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(PageName.PROGRESS_INDICATOR),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              _lineIndicator(),
              _circleIndicator(),
            ],
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
//Key key,
//    double value,
//Color backgroundColor,
//    Animation<Color> valueColor,
//String semanticsLabel,
//    String semanticsValue,
//}
