///
/// Created by NieBin on 2019/6/8
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class FadeTransitionPage extends StatefulWidget {
  @override
  _FadeTransitionState createState() => _FadeTransitionState();
}

class _FadeTransitionState extends State<FadeTransitionPage>
    with SingleTickerProviderStateMixin {
  Animation<double> _opacityAnim;
  AnimationController _controller;

  Widget _fadeTrans() => FadeTransition(
        opacity: _opacityAnim,
        child: Text(
          "Hello world",
          style: TextStyle(color: RED_LIGHT),
        ),
      );
  @override
  void initState() {
    _controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    CurvedAnimation curvedAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _opacityAnim = Tween(begin: 0.0, end: 1.0).animate(curvedAnimation);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.ANIM_FADE_TRANS),
      ),
      body: Column(
        children: <Widget>[
          _fadeTrans(),
          FloatingActionButton(
            child: Text("Click Me"),
            onPressed: () {
              _controller.reset();
              _controller.forward();
            },
          )
        ],
      ),
    );
  }
}
