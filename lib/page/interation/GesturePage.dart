///
/// Created by NieBin on 2019/6/12
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import "package:flutter_widgets/const/_const.dart";

class GesturePage extends StatefulWidget {
  @override
  _GestureState createState() => _GestureState();
}

class _GestureState extends State<GesturePage> {
  Widget _gesture(context) => GestureDetector(
        child: Text("You can tab me then look the log."),
        onTap: () {
          print("Hello world");
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("You have click me."),
            ),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.INTER_GESTURE),
      ),
      body: Builder(
        builder: (context) => _gesture(context),
      ),
    );
  }
}
