///
/// Created by NieBin on 2019/5/26
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';
import 'dart:math';

class AnimationPage extends StatefulWidget {
  @override
  AnimationState createState() => AnimationState();
}

class AnimationState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation animation;
  Animation<double> _animation;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    _animation = Tween(begin: 0.0, end: 1.0).animate(animation)
      ..addListener(() {
        setState(() {
          _animation.value;
        });
        print("value: ${_animation.value}");
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AnimationPage"),
        ),
        body: Column(
          children: <Widget>[
            Transform.translate(
              offset: Offset(100, _animation.value * 100),
              child: FloatingActionButton(
                onPressed: () {
                  print("hello");

                  controller.reset();
                  controller.forward();
                },
                child: Text("Button"),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  constraints: BoxConstraints.expand(height: 100, width: 100),
                  child: FloatingActionButton(
                    onPressed: () {
                      animation.curve = Curves.bounceOut;
                      controller.reset();
                      controller.forward();
                    },
                    child: Text("bounceInOut"),
                    heroTag: null,
                  ),
                ),
                Container(
                  constraints: BoxConstraints.expand(height: 100, width: 100),
                  child: FloatingActionButton(
                    onPressed: () {
                      animation.curve = Curves.bounceIn;
                      controller.reset();
                      controller.forward();
                    },
                    child: Text("bounceIn"),
                    heroTag: null,
                  ),
                ),
                Container(
                  constraints: BoxConstraints.expand(height: 100, width: 100),
                  child: FloatingActionButton(
                    onPressed: () {
                      animation.curve = Curves.fastOutSlowIn;
                      controller.reset();
                      controller.forward();
                    },
                    heroTag: null,
                    child: Text("fastOutSlowIn"),
                  ),
                ),
              ],
            )
          ],
        ));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
