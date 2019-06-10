///
/// Created by NieBin on 2019/6/10
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class AnimWidgetPage extends StatefulWidget {
  @override
  _AnimWidgetState createState() => _AnimWidgetState();
}

class _AnimWidgetState extends State<AnimWidgetPage>
    with SingleTickerProviderStateMixin {
  Animation<double> _anim;
  AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    CurvedAnimation curve =
        CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _anim = Tween(begin: 0.0, end: 30.0).animate(curve);
    super.initState();
  }

  Widget _animWidget() => _AnimWidget(
        anim: _anim,
        child: Text("This is Animation Widget."),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.ANIM_WIDGET),
      ),
      body: Column(
        children: <Widget>[
          _animWidget(),
          FloatingActionButton(
            child: Text("Click me."),
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

class _AnimWidget extends AnimatedWidget {
  const _AnimWidget({Key key, Animation<double> anim, this.child})
      : super(key: key, listenable: anim);

  Animation<double> get size => listenable;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(
          width: size.value * 10,
          height: size.value * 10,
        ),
        color: RED_LIGHT,
        child: child);
  }
}
