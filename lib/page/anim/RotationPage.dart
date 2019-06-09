///
/// Created by NieBin on 2019/6/9
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import 'package:flutter/material.dart';
import 'package:flutter_widgets/const/_const.dart';
import 'dart:math';

class RotationPage extends StatefulWidget {
  @override
  _RotationState createState() => _RotationState();
}

class _RotationState extends State<RotationPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _rotationAnim;
  Animation<Offset> _offsetAnim;
  Animation<Decoration> _decorationAnim;

  Widget _rotation() => RotationTransition(
        turns: _rotationAnim,
        alignment: Alignment.center,
        child: Text(
          "This is my first rotation transition.",
          style: TextStyle(color: BLUE_DEEP, fontSize: 10),
        ),
      );

  Widget _scale() => ScaleTransition(
        scale: _rotationAnim,
        child: Text("Scale transition."),
      );

  Widget _slide() => SlideTransition(
        position: _offsetAnim,
        child: Text(
          "Offset",
          style: TextStyle(color: PURPLE),
        ),
      );

  Widget _sizeTrans() => SizeTransition(
        sizeFactor: _rotationAnim,
        child: Container(
          width: 100,
          height: 100,
          color: RED_LIGHT,
        ),
      );

  Widget _decoratedTrans() => DecoratedBoxTransition(
      decoration: _decorationAnim,
      child: Container(
        constraints: BoxConstraints.expand(height: 100, width: 200),
        child: InkWell(
          child: Center(
            child: Text("Click Me"),
          ),
          onTap: () {
            _controller.reset();
            _controller.forward();
          },
        ),
      ));

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    CurvedAnimation _curve =
        CurvedAnimation(parent: _controller, curve: Curves.elasticIn);
    _rotationAnim = Tween(begin: 0.0, end: pi).animate(_curve);
    _offsetAnim =
        Tween(begin: Offset(0.0, 0.0), end: Offset(5.0, 1.0)).animate(_curve);
    _decorationAnim = DecorationTween(
            begin: ShapeDecoration(
                shape: StadiumBorder(
                    side: BorderSide(color: RED_LIGHT, width: 1))),
            end: ShapeDecoration(
                shape: CircleBorder(side: BorderSide(color: BLUE, width: 4))))
        .animate(_curve);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.ANIM_ROTATION),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _rotation(),
          _scale(),
          _slide(),
          _sizeTrans(),
          _decoratedTrans(),
        ],
      ),
    );
  }
}
