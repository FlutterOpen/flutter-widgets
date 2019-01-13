///Create by Flutter open
import 'package:flutter/material.dart';
import 'package:flutter_widgets/page/_page.dart';
import 'package:flutter_widgets/util/_util.dart';
import 'package:flutter_widgets/const/_const.dart';

void main() => runApp(FlutterOpenApp());

class FlutterOpenApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeUtil.getInstance(key: SizeKeyConst.DEVICE_KEY).logicSize =
        SizeUtil.initDesignSize();

    return MaterialApp(
      title: FLUTTER_OPEN,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        PageName.CONTAINER: (context) => ContainerPage(),
      },
    );
  }
}
