///
/// Created by NieBin on 2019/6/10
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter_widgets/const/_const.dart";
import 'package:flutter/material.dart';

class PyhModelPage extends StatefulWidget {
  @override
  _BaseState createState() => _BaseState();
}

class _BaseState extends State<PyhModelPage> {
  Color _color = RED_LIGHT;

  Widget _pyhModel() => AnimatedPhysicalModel(
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: FloatingActionButton(onPressed: () {
            setState(() {
              _color = _color == RED_LIGHT ? PURPLE : RED_LIGHT;
            });
          }),
        ),
      ),
      shape: BoxShape.rectangle,
      elevation: 2,
      color: _color,
      shadowColor: BLUE_DEEP,
      duration: Duration(milliseconds: 100));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.ANIM_PYH_MODEL),
      ),
      body: _pyhModel(),
    );
  }
}
