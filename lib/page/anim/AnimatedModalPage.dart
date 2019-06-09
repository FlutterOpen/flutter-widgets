///
/// Created by NieBin on 2019/6/10
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class AnimatedModalPage extends StatefulWidget {
  @override
  _AnimatedModalState createState() => _AnimatedModalState();
}

class _AnimatedModalState extends State<AnimatedModalPage>
    with SingleTickerProviderStateMixin {
  Animation<Color> _animation;
  AnimationController _controller;
  bool _isClick = false;

  Widget _modalBarrier() => Container(
        constraints: BoxConstraints.expand(height: 100, width: 100),
        child: Stack(
          children: <Widget>[
            AnimatedModalBarrier(
              color: _animation,
            ),
            Text("Click Me finsih this page!")
          ],
        ),
      );

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    CurvedAnimation curve =
        CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _animation = Tween(begin: BLUE_DEEP, end: RED_LIGHT).animate(curve);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
        body: Column(
          children: <Widget>[
            _modalBarrier(),
            FloatingActionButton(
              child: Text("Click"),
              onPressed: () {
                setState(() {
                  _isClick = !_isClick;
                });
                _controller.reset();
                _controller.forward();
              },
            )
          ],
        ));
  }
}
