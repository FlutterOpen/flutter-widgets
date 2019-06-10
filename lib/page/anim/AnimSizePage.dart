///
/// Created by NieBin on 2019/6/10
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class AnimSizePage extends StatefulWidget {
  @override
  _AnimSizeState createState() => _AnimSizeState();
}

class _AnimSizeState extends State<AnimSizePage>
    with SingleTickerProviderStateMixin {
  var _size = 100.0;

  Widget _sizeW() => AnimatedSize(
        duration: Duration(seconds: 3),
        vsync: this,
        child: InkWell(
          child: Container(
            constraints: BoxConstraints.expand(width: _size, height: _size),
            color: RED_LIGHT,
            child: Text("Click"),
          ),
          onTap: () {
            setState(() {
              _size = _size + 20.0;
              if (_size > 500) {
                _size = 10;
              }
            });
          },
        ),
      );

  @override
  void initState() {
//    _controller =
//        AnimationController(vsync: this, duration: Duration(seconds: 2));
//    CurvedAnimation curve =
//        CurvedAnimation(parent: _controller, curve: Curves.easeIn);
//
//    _anim = Tween(begin: 0.0, end: 1.0).animate(curve);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.ANIM_SIZE),
      ),
      body: Column(
        children: <Widget>[
          _sizeW(),
        ],
      ),
    );
  }
}
