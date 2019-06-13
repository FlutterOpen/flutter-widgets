///
/// Created by NieBin on 2019/6/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import "package:flutter_widgets/const/_const.dart";

class FuturePage extends StatefulWidget {
  @override
  _FutureState createState() => _FutureState();
}

class _FutureState extends State<FuturePage> {
  Future<String> _getData() async {
    return "Hello world";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.ASYNC_FUTURE),
      ),
      body: Container(
        child: FutureBuilder<String>(
          future: _getData(), // a previously-obtained Future<String> or null
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Text('Press button to start.');
              case ConnectionState.active:
              case ConnectionState.waiting:
                return Text('Awaiting result...');
              case ConnectionState.done:
                if (snapshot.hasError) return Text('Error: ${snapshot.error}');
                return Text('Result: ${snapshot.data}');
            }
            return null; // unreachable
          },
        ),
      ),
    );
  }
}
