///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class IconPage extends StatefulWidget {
  @override
  _IconState createState() => _IconState();
}

class _IconState extends State<IconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.ICON),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Icon(
              Icons.ac_unit,
              size: 100,
              color: RED,
            ),
            Icon(
              Icons.chrome_reader_mode,
              size: 200,
              color: GREEN,
              textDirection: TextDirection.ltr,
            ),
            Icon(
              Icons.chrome_reader_mode,
              size: 200,
              color: BLUE_DEEP,
              textDirection: TextDirection.rtl,
            ),
            Icon(
              Icons.build,
              size: 200,
              color: PURPLE,
              textDirection: TextDirection.ltr,
            ),
            Icon(
              Icons.build,
              size: 200,
              color: BLUE_DEEP,
              textDirection: TextDirection.rtl,
            )
          ],
        ),
      ),
    );
  }
}
