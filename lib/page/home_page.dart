///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  Widget _item(context, index) {
    return InkWell(
      child: Card(
          child: Stack(
        children: <Widget>[
          Center(
            child: Image.asset(
              PAGE_ITEMS[index]["img"],
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Text(
              PAGE_ITEMS[index]["title"],
              style: TextStyle(color: TEXT_BLACK, fontSize: TEXT_LARGE),
            ),
          )
        ],
      )),
      onTap: () {
        Navigator.pushNamed(context, PAGE_ITEMS[index]["click"]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(FLUTTER_OPEN),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            childAspectRatio: 1.2),
        itemBuilder: (context, index) {
          return _item(context, index);
        },
        itemCount: PAGE_ITEMS.length,
      ),
    );
  }
}
