///
/// Created by NieBin on 2019/6/9
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class PositionTransitionPage extends StatefulWidget {
  @override
  _PositionTransState createState() => _PositionTransState();
}

class _PositionTransState extends State<PositionTransitionPage>
    with SingleTickerProviderStateMixin {
  Animation<RelativeRect> _rectAnim;
  AnimationController _controller;

  Widget _positionTrans() => PositionedTransition(
        rect: _rectAnim,
        child: Container(
          color: BLUE_DEEP,
          child: Text("Hello world"),
        ),
      );

  Widget _positionClick() => FloatingActionButton(
        child: Text("position click"),
        onPressed: () {
          _controller.reset();
          _controller.forward();
        },
      );

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    CurvedAnimation _curve =
        CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _rectAnim = RelativeRectTween(
      begin: RelativeRect.fromLTRB(00.0, 0.0, 0.0, 0.0),
      end: RelativeRect.fromLTRB(100.0, 100.0, 0, 00),
    ).animate(_curve)
      ..addListener(() {
        print("value = $_rectAnim");
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.ANIM_POSITION_TRANS),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(width: 200, height: 200),
            color: RED_LIGHT,
            child: Stack(
              children: <Widget>[
                _positionTrans(),
              ],
            ),
          ),
          _positionClick()
        ],
      ),
    );
  }
}
