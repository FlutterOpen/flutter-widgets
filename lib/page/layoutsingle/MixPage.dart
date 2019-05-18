///
/// Created by NieBin on 2019/5/17
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class MixPage extends StatefulWidget {
  @override
  MixState createState() => MixState();
}

class MixState extends State<MixPage> {
  Widget _listTitle() => ListTile(
        leading: Icon(Icons.ac_unit),
        title: Text("NieBin"),
        subtitle: Text("This man is very nice,hope you like it."),
        trailing: Text("h"),
        isThreeLine: true,
        dense: true,
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        onTap: () {
          print("If you like, please like me for a minute.");
        },
      );

  Widget _limitBox() => LimitedBox(
      maxWidth: 100,
      maxHeight: 100,
      child: Container(
        color: YELLOW,
      ));

  Widget _align() => Container(
        constraints: BoxConstraints.expand(height: 100),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text("alignment bottom center"),
        ),
        color: BLUE,
      );

  Widget _fitBox() => Container(
        constraints: BoxConstraints.expand(height: 100),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Text(
            "FittedBox boxFit.fill",
            style: TextStyle(fontSize: 10),
          ),
        ),
        color: RED,
      );

  Widget _baseline() => Container(
        constraints: BoxConstraints.expand(height: 100),
        child: Baseline(
          baseline: 40,
          baselineType: TextBaseline.alphabetic,
          child: Row(
            children: <Widget>[
              Text(
                "Fs",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Fs",
                style: TextStyle(fontSize: 40),
              ),
              Text(
                "Fs",
                style: TextStyle(fontSize: 60),
              ),
              Text(
                "Fs",
                style: TextStyle(fontSize: 80),
              )
            ],
          ),
        ),
        color: BLUE_DEEP,
      );

  Widget _fractionSizeBox() => Container(
        constraints: BoxConstraints.expand(height: 100),
        child: FractionallySizedBox(
            child: Container(
              color: BLUE_DEEP,
            ),
            alignment: Alignment.centerRight,
            widthFactor: 0.9,
            heightFactor: 1),
        color: RED_LIGHT,
      );

  Widget _intrinsicHeight() => Container(
        child: IntrinsicHeight(
          child: Text("Hello world!"),
        ),
        color: BLUE_DEEP,
      );

  Widget _overflowBox() => Container(
        constraints: BoxConstraints.expand(height: 100, width: 50),
        child: OverflowBox(
            //限制他的子布局/甚至可以溢出父布局
            minWidth: 100,
            minHeight: 50,
            maxHeight: 100,
            maxWidth: 100,
            child: Container(
              constraints: BoxConstraints.expand(width: 10, height: 10),
              color: BLUE_DEEP,
            )),
        color: RED,
      );

  Widget _sizeBox() => SizedBox(
        width: 100,
        height: 100,
        child: Container(
          color: BLUE_DEEP,
          alignment: Alignment.centerRight,
          child: Text("SizeBox"),
        ),
      );

//TODO 没有得到期望的效果
  Widget _sizeOverflowBox() => Container(
        constraints: BoxConstraints.expand(height: 100, width: 100),
        child: SizedOverflowBox(
          size: Size(0, 0),
          child: Container(
            color: RED,
            constraints: BoxConstraints.expand(height: 10, width: 10),
            child: Text(""),
          ),
        ),
      );

  ///TODO 可以学习 怎么使用矩阵
  Widget _transform() => Container(
        constraints: BoxConstraints.expand(height: 100, width: 100),
        color: BLUE_DEEP,
        child: Transform.translate(
          offset: Offset(10, 10),
          child: Container(
            constraints: BoxConstraints.expand(height: 10, width: 10),
            color: RED,
            child: Transform(
              transform: Matrix4.translationValues(1, 50, 0),
              child: Text("HEll"),
            ),
          ),
        ),
      );

  Widget _offstage() => Container(
        constraints: BoxConstraints.expand(height: 100, width: 100),
        child: Offstage(
          offstage: false,
          child: Text("Offstage"),
        ),
      );

  Widget _customSingleChild() => Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.MIX_SINGLE_LAYOUT),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _listTitle(),
            Divider(height: 10, color: BLUE),
            _limitBox(),
            Divider(height: 10, color: YELLOW),
            _align(),
            Divider(height: 10, color: YELLOW),
            _fitBox(),
            Divider(height: 10, color: YELLOW),
            _baseline(),
            Divider(height: 10, color: YELLOW),
            _fractionSizeBox(),
            Divider(height: 10, color: YELLOW),
            _intrinsicHeight(),
            Divider(height: 10, color: YELLOW),
            _overflowBox(),
            Divider(height: 10, color: YELLOW),
            _sizeBox(),
            _sizeOverflowBox(),
            Divider(height: 10, color: YELLOW),
            _transform(),
            Divider(height: 10, color: YELLOW),
            _offstage(),
          ],
        ),
      ),
    );
  }
}

class CustomLayout extends CustomSingleChildLayout {}

class SingleD extends SingleChildLayoutDelegate {
  SingleD({Listenable relayout})
      : assert(relayout != null),
        super(relayout: relayout);

  @override
  bool shouldRelayout(SingleChildLayoutDelegate oldDelegate) {
    return true;
  }
}
