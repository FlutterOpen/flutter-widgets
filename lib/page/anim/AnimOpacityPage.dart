///
/// Created by NieBin on 2019/6/10
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class AnimOpacityPage extends StatefulWidget {
  @override
  _AnimOpacityState createState() => _AnimOpacityState();
}

class _AnimOpacityState extends State<AnimOpacityPage> {
  var op = 1.0;

  Widget _opacity() => AnimatedOpacity(
        opacity: op,
        duration: Duration(seconds: 1),
        child: Container(
          color: RED_LIGHT,
          child: Padding(
            padding: EdgeInsets.all(50),
            child: FloatingActionButton(onPressed: () {
              setState(() {
                op = op > 0.51 ? 0.5 : 1.0;
              });
            }),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.ANIM_OPACITY),
      ),
      body: _opacity(),
    );
  }
}
