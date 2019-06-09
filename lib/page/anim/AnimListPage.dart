///
/// Created by NieBin on 2019/6/9
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class AnimListPage extends StatefulWidget {
  @override
  AnimListState createState() => AnimListState();
}

List<String> list = [
  "Hello",
  "World",
  "AAAA",
  "BBBB",
  "CCCC",
  "DDDDD",
  "EEEE",
  "FFFF"
];

class AnimListState extends State<AnimListPage>
    with SingleTickerProviderStateMixin {
  final _key = GlobalKey<AnimatedListState>();

  Widget _itemBuilder(context, index, anim) => index == 0
      ? FloatingActionButton(
          child: Text("Click"),
          onPressed: () {
            if (list.length > 20) {
              var s = list.removeAt(1);
              _key.currentState.removeItem(
                1,
                (context, anim) => ScaleTransition(
                      scale: anim,
                      child: Text(list[index]),
                    ),
              );
            } else {
              list.insert(1, "Hello");
              _key.currentState.insertItem(1);
            }
          },
        )
      : Container(
          constraints: BoxConstraints.expand(height: 40),
          child: ScaleTransition(
            scale: anim,
            child: Text(list[index]),
          ));

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(PageName.ANIM_LIST),
        ),
        body: AnimatedList(
          key: _key,
          initialItemCount: list.length,
          itemBuilder: _itemBuilder,
        ));
  }
}
