///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

const _PATH = "assets/images/image";
const _PIC01 = "$_PATH/pic01.png";
const _PIC02 = "$_PATH/pic02.png";
const _PIC03 = "$_PATH/pic03.png";
const _PIC04 = "$_PATH/pic04.png";
const _PIC05 = "$_PATH/pic05.png";
const _PIC06 = "$_PATH/pic06.png";
const _PIC07 = "$_PATH/pic07.png";
const _PIC08 = "$_PATH/pic08.png";
const _PIC09 = "$_PATH/pic09.png";
const _PIC10 = "$_PATH/pic10.png";
const _PIC11 = "$_PATH/pic11.png";
const _CIRCLE = "$_PATH/circle_10.png";

class ImagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ImageState();
}

class _ImageState extends State<ImagePage> {
  Widget _limitSize() => Container(
        color: RED,
        child: Image.asset(
          _PIC01,
          height: 100,
          width: 100,
        ),
      );

  Widget _fillImage() => Container(
        child: Image.asset(
          _PIC01,
          width: 100,
          height: 100,
          fit: BoxFit.fill,
        ),
      );

  Widget _fitContain() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            color: YELLOW,
            width: 100,
            height: 100,
            child: Image.asset(
              _PIC01,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(width: 10),
          Container(
            color: YELLOW,
            width: 100,
            height: 100,
            child: Image.asset(
              _PIC01,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(width: 10),
          Container(
            color: RED,
            width: 100,
            height: 100,
            child: Image.asset(
              _PIC01,
              fit: BoxFit.contain,
            ),
          ),
        ],
      );

  Widget _fitOther() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            color: YELLOW,
            width: 100,
            height: 100,
            child: Image.asset(
              _PIC01,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Container(
            color: BLUE_DEEP,
            width: 100,
            height: 100,
            child: Image.asset(
              _PIC01,
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(width: 10),
          Container(
            color: YELLOW,
            width: 100,
            height: 100,
            child: Image.asset(
              _PIC01,
              fit: BoxFit.none,
            ),
          ),
        ],
      );

  Widget _alignTopImage() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: YELLOW,
            width: 66.7,
            height: 100,
            child: Image.asset(
              _CIRCLE,
              fit: BoxFit.none,
              alignment: Alignment.topLeft,
            ),
          ),
          SizedBox(width: 10),
          Container(
            color: YELLOW,
            width: 66.7,
            height: 100,
            child: Image.asset(
              _CIRCLE,
              fit: BoxFit.none,
              alignment: Alignment.topCenter,
            ),
          ),
          SizedBox(width: 10),
          Container(
            color: YELLOW,
            width: 66.7,
            height: 100,
            child: Image.asset(
              _CIRCLE,
              fit: BoxFit.none,
              alignment: Alignment.topRight,
            ),
          ),
        ],
      );

  Widget _alignBottomImage() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: YELLOW,
            width: 66.7,
            height: 100,
            child: Image.asset(
              _CIRCLE,
              fit: BoxFit.none,
              alignment: Alignment.bottomLeft,
            ),
          ),
          SizedBox(width: 10),
          Container(
            color: YELLOW,
            width: 66.7,
            height: 100,
            child: Image.asset(
              _CIRCLE,
              fit: BoxFit.none,
              alignment: Alignment.bottomCenter,
            ),
          ),
          SizedBox(width: 10),
          Container(
            color: YELLOW,
            width: 66.7,
            height: 100,
            child: Image.asset(
              _CIRCLE,
              fit: BoxFit.none,
              alignment: Alignment.bottomRight,
            ),
          ),
        ],
      );

  Widget _blendImage2() => Container(
        constraints: BoxConstraints.expand(height: 100),
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset(
                    _PIC06,
                    color: PURPLE,
                    colorBlendMode: BlendMode.lighten,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset(
                    _PIC06,
                    color: PURPLE,
                    colorBlendMode: BlendMode.difference,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset(
                    _PIC06,
                    color: PURPLE,
                    colorBlendMode: BlendMode.overlay,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset(
                    _PIC06,
                    color: YELLOW,
                    colorBlendMode: BlendMode.screen,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset(
                    _PIC06,
                    color: PURPLE,
                    colorBlendMode: BlendMode.srcATop,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset(
                    _PIC06,
                    color: PURPLE,
                    colorBlendMode: BlendMode.colorBurn,
                  ),
                )),
          ],
        ),
      );

  Widget _blendImage() => Container(
        constraints: BoxConstraints.expand(height: 100),
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset(
                    _PIC06,
                    color: PURPLE,
                    colorBlendMode: BlendMode.color,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset(
                    _PIC06,
                    color: PURPLE,
                    colorBlendMode: BlendMode.multiply,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset(
                    _PIC06,
                    color: PURPLE,
                    colorBlendMode: BlendMode.darken,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset(
                    _PIC06,
                    color: YELLOW,
                    colorBlendMode: BlendMode.luminosity,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset(
                    _PIC06,
                    color: PURPLE,
                    colorBlendMode: BlendMode.exclusion,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset(
                    _PIC06,
                    color: PURPLE,
                    colorBlendMode: BlendMode.colorBurn,
                  ),
                )),
          ],
        ),
      );

  Widget _repeatImage() => Container(
        constraints: BoxConstraints.expand(height: 100),
        child: Image.asset(
          _PIC03,
          repeat: ImageRepeat.repeatX,
          fit: BoxFit.contain,
        ),
      );

  Widget _directionImage() => Container(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Directionality(
            textDirection: TextDirection.ltr,
            child: Image.asset(
              _PIC04,
              matchTextDirection: true,
            ),
          ),
          Directionality(
              textDirection: TextDirection.rtl,
              child: Image.asset(_PIC04, matchTextDirection: true)),
        ],
      ));

  Widget _qualityImage() => Container(
      height: 600,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.asset(
              _PIC11,
              filterQuality: FilterQuality.high,
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset(
              _PIC11,
              filterQuality: FilterQuality.none,
            ),
          ),
        ],
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.IMAGE),
      ),
      body: SingleChildScrollView(
          child: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(height: 300),
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/image/pic02.png",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "width = 100, height = 100",
            style: TextStyle(color: RED),
          ),
          _limitSize(),
          Text(
            "fit = BoxFit.fill",
            style: TextStyle(color: BLUE_DEEP),
          ),
          _fillImage(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("BoxFit.fitWidth",
                  style: TextStyle(color: Colors.grey[700])),
              Text("BoxFit.fitHeight",
                  style: TextStyle(color: Colors.grey[700])),
              Text("BoxFit.contain", style: TextStyle(color: Colors.grey[700]))
            ],
          ),
          _fitContain(),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("BoxFit.cover", style: TextStyle(color: Colors.grey[700])),
              Text("BoxFit.scaleDown",
                  style: TextStyle(color: Colors.grey[700])),
              Text("BoxFit.none", style: TextStyle(color: Colors.grey[700]))
            ],
          ),
          _fitOther(),
          SizedBox(height: 20),
          Container(
            width: 200,
            height: 200,
            child: Image.asset(
              _CIRCLE,
              fit: BoxFit.none,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("topleft ", style: TextStyle(color: Colors.grey[700])),
              SizedBox(width: 10),
              Text("topCenter", style: TextStyle(color: Colors.grey[700])),
              SizedBox(width: 10),
              Text("topRight", style: TextStyle(color: Colors.grey[700]))
            ],
          ),
          _alignTopImage(),
          SizedBox(height: 10),
          _alignBottomImage(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("bottomleft ", style: TextStyle(color: Colors.grey[700])),
              SizedBox(width: 10),
              Text("bottomCenter", style: TextStyle(color: Colors.grey[700])),
              SizedBox(width: 10),
              Text("bottomRight", style: TextStyle(color: Colors.grey[700]))
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: 200,
            height: 200,
            child: Image.asset(
              _PIC06,
              fit: BoxFit.contain,
            ),
          ),
          _blendImage(),
          _blendImage2(),
          _repeatImage(),
          _directionImage(),
          _qualityImage(),
          SizedBox(height: 300),
        ],
      )),
    );
  }
}
