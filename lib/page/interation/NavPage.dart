///
/// Created by NieBin on 2019/6/15
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class NavPage extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<NavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NavPage"),
        ),
        body: Center(
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context, "My name is Nie Bin");
            },
            child: Text("back"),
            backgroundColor: BLUE_LIGHT,
          ),
        ));
  }
}
