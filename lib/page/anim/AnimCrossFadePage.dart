///
/// Created by NieBin on 2019/6/7
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class AnimCrossFadePage extends StatefulWidget {
  @override
  _AnimCrossFadeState createState() => _AnimCrossFadeState();
}

class _AnimCrossFadeState extends State<AnimCrossFadePage> {
  bool _first = true;

  Widget _crossFade() => AnimatedCrossFade(
        duration: const Duration(seconds: 1),
        firstChild:
            const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100.0),
        firstCurve: Curves.easeIn,
        secondCurve: Curves.easeOut,
        secondChild:
            const FlutterLogo(style: FlutterLogoStyle.markOnly, size: 100.0),
        crossFadeState:
            _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.ANIM_CROSS_FADE),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _crossFade(),
            FloatingActionButton(onPressed: () {
              setState(() {
                _first = !_first;
              });
            })
          ],
        ),
      ),
    );
  }
}
