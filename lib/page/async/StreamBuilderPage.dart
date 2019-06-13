///
/// Created by NieBin on 2019/6/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class StreamBuilderPage extends StatefulWidget {
  @override
  _StreamBuilderState createState() => _StreamBuilderState();
}

class _StreamBuilderState extends State<StreamBuilderPage> {
  Stream<List<String>> _stream() =>
      Stream<List<String>>.fromFuture(_futureList());

  Future<List<String>> _futureList() async {
    return _listData;
  }

  List<String> _listData = [
    "Hello",
    "World",
    "World",
    "World",
    "World",
    "World",
    "World",
    "World",
    "World",
    "World",
    "World",
    "World",
    "World",
    "World",
    "World",
    "World",
    "World",
    "World",
    "World",
    "World",
    "World",
    "World",
  ];

  Widget _streamBuildList() => StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Text('Press button to start.');
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Text('Awaiting result...');
            case ConnectionState.done:
              if (snapshot.hasError) return Text('Error: ${snapshot.error}');
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) => Container(
                        constraints: BoxConstraints.expand(height: 100),
                        color: index % 2 == 0 ? RED_LIGHT : PURPLE,
                        child: Text(
                          snapshot.data[index],
                          style: TextStyle(color: TEXT_BLACK, fontSize: 20),
                        ),
                      ));
          }
          return null; // unreachable
        },
        stream: _stream(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.ASYNC_STREAM_BUILDER),
      ),
      body: _streamBuildList(),
    );
  }
}
