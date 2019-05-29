///
/// Created by NieBin on 2019/5/30
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  @override
  AnimatedState createState() => AnimatedState();
}

class AnimatedState extends State<AnimatedContainerPage>
    with SingleTickerProviderStateMixin {
  double w = 20.0;
  double h = 20.0;

  Widget _container() => Center(
          child: AnimatedContainer(
        duration: Duration(seconds: 1),
        child: Container(
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                w = w + 20;
                h = h + 20;
                print("h= $h,w=$w");
              });
            },
            child: Text("Button"),
          ),
        ),
        height: h,
        width: w,
        curve: Curves.elasticOut,
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.ANIM_CONTAINER),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _container(),
          ],
        ),
      ),
    );
  }
}
