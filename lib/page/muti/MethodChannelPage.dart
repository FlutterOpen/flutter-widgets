///
/// Created by NieBin on 2019/5/26
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
/// this page is for calling the android native code.
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';
import 'package:flutter/services.dart';

class MethodChannelPage extends StatefulWidget {
  @override
  _MethodChannelState createState() => _MethodChannelState();
}

class _MethodChannelState extends State<MethodChannelPage> {
  static const platform = MethodChannel("com.nb.hello/dev");
  String _name = "";

  Future<void> _click() async {
    String name;
    try {
      name = await platform.invokeMethod("get");
    } on PlatformException catch (e) {
      name = "Exception";
    }
    setState(() {
      _name = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.METHOD_CHANNEL),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Hello world! $_name"),
            Divider(height: 10),
            FloatingActionButton(
              child: Text("Click"),
              onPressed: _click,
            )
          ],
        ),
      ),
    );
  }
}
