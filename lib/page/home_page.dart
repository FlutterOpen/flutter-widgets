///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';
import 'package:flutter_widgets/util/_util.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  var opacity = 0.8;

  LinearGradient _itemGradient(index) {
    var gradient = GradientUtil.red(
        begin: AlignmentDirectional.topStart,
        end: AlignmentDirectional.bottomEnd,
        opacity: opacity);
    switch (index % 4) {
      case 0:
        gradient = GradientUtil.red(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            opacity: opacity);
        break;
      case 1:
        gradient = GradientUtil.greenPurple(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            opacity: opacity);
        break;
      case 2:
        gradient = GradientUtil.greenRed(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            opacity: opacity);
        break;
      case 3:
        gradient = GradientUtil.yellowBlue(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            opacity: opacity);
        break;
    }
    return gradient;
  }

  Widget _item(context, index) {
    return InkWell(
      child: Card(
          child: Stack(
        children: <Widget>[
//          Center(
//            child: Image.asset(
//              PAGE_ITEMS[index]["img"],
//              fit: BoxFit.cover,
//            ),
//          ),
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(gradient: _itemGradient(index)),
          ),
          Center(
            child: Text(
              PAGE_ITEMS[index]["title"],
              style: TextStyle(
                  color: TEXT_BLACK_LIGHT,
                  fontSize: TEXT_LARGE,
                  fontWeight: FontWeight.w700),
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
    SizeUtil.getInstance(key: SizeKeyConst.DEVICE_KEY).logicSize =
        MediaQuery.of(context).size;
//    var size = MediaQuery.of(context).size;
//    print("size:width.${size.width},height.${size.height}");
    SizeUtil.initDesignSize();
    return Scaffold(
      appBar: AppBar(
        title: Text(FLUTTER_OPEN),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            childAspectRatio: 2),
        itemBuilder: (context, index) {
          return _item(context, index);
        },
        itemCount: PAGE_ITEMS.length,
      ),
    );
  }
}
