///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class RaiseButtonPage extends StatefulWidget {
  @override
  _RaiseButtonState createState() => _RaiseButtonState();
}

class _RaiseButtonState extends State<RaiseButtonPage> {
  Widget _colorsButton() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10),
          RaisedButton(
            onPressed: () {
              print("click");
            },
            child: Text(
              "color:PURPLE\ntextColor: Colors.white\nhighlightColor: RED\nsplashColor: BLUE_DEEP",
              style: TextStyle(fontSize: 40),
            ),
            color: PURPLE,
            textColor: Colors.white,
            highlightColor: RED,
            splashColor: BLUE_DEEP,
          ),
          SizedBox(height: 10),
          RaisedButton(
            onPressed: null,
            child: Text(
              " onPressed: null \ndisabledColor: YELLOW,\n disabledTextColor: TEXT_BLACK,",
              style: TextStyle(fontSize: 40),
            ),
            disabledColor: YELLOW,
            disabledTextColor: TEXT_BLACK,
          ),
        ],
      );

  Widget _themeButton() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10),
          RaisedButton(
            onPressed: () {
              print("click");
            },


            child: Text(
              "textTheme:normal",
              style: TextStyle(fontSize: 40),
            ),
            textTheme: ButtonTextTheme.normal,
          ),
          RaisedButton(
            onPressed: () {
              print("click");
            },
            child: Text(
              "textTheme:accent",
              style: TextStyle(fontSize: 40),
            ),
            textTheme: ButtonTextTheme.accent,
          ),
          RaisedButton(
            onPressed: () {
              print("click");
            },
            child: Text(
              "textTheme:primary",
              style: TextStyle(fontSize: 40),
            ),
            textTheme: ButtonTextTheme.primary,
          ),
        ],
      );

  Widget _brightButton() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              print("click");
            },
            child: Text(
              "colorBrightness:light",
              style: TextStyle(fontSize: 40),
            ),
//            colorBrightness: Brightness.dark,
          ),
          SizedBox(height: 10),
          RaisedButton(
            onPressed: () {
              print("click");
            },
            child: Text(
              "colorBrightness:dark",
              style: TextStyle(fontSize: 40),
            ),
//            colorBrightness: Brightness.light,
          ),
          SizedBox(height: 10),
          RaisedButton(
            onPressed: () {
              print("click");
            },
            child: Text(
              "colorBrightness:light\ntextTheme:accent",
              style: TextStyle(fontSize: 40),
            ),
//            colorBrightness: Brightness.light,
            textTheme: ButtonTextTheme.accent,
          ),
        ],
      );

  Widget _compareColor() => Column(
        children: <Widget>[
          SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              print("click");
            },
            child: Text(
              "textTheme: accent\ntextColor: BLUE\ncolorBrightness:light",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            color: BLUE_LIGHT,
            textTheme: ButtonTextTheme.accent,
            textColor: Colors.white,
//            colorBrightness: Brightness.light,
          )
        ],
      );

  Widget _elevationButton() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10),
          RaisedButton(
            onPressed: () {},
            child: Text(
              "elevation: 4\nhighlightElevation: 10",
              style: TextStyle(fontSize: 40),
            ),
            color: RED,
            textColor: Colors.white,
            elevation: 4,
            highlightElevation: 10,
            highlightColor: TEXT_BLACK_LIGHT,
          ),
          SizedBox(height: 10),
          RaisedButton(
            onPressed: null,
            child: Text(
              "disabledElevation: 10",
              style: TextStyle(fontSize: 40),
            ),
            color: RED,
            disabledElevation: 10,
            disabledTextColor: TEXT_BLACK,
            disabledColor: PURPLE,
          ),
        ],
      );

  Widget _paddingButton() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10),
          RaisedButton(
            onPressed: () {
              print("click");
            },
            color: GREEN,
            child: Text(
              "padding",
              style: TextStyle(fontSize: 40),
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          )
        ],
      );

  Widget _shapeButton() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10),
          RaisedButton(
            onPressed: () {
              print("click");
            },
            color: BLUE_LIGHT,
            child: Text(
              "StadiumBorder",
              style: TextStyle(fontSize: 40),
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            shape: StadiumBorder(
              side: BorderSide(color: RED_LIGHT, width: 1),
            ),
          ),
          SizedBox(height: 10),
          RaisedButton(
            onPressed: () {
              print("click");
            },
            color: RED,
            child: Text(
              "RoundedRectangleBorder",
              style: TextStyle(fontSize: 30),
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: PURPLE, width: 4),
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(height: 10),
          RaisedButton(
            onPressed: () {
              print("click");
            },
            color: PURPLE,
            child: Text(
              "BeveledRectangleBorder",
              style: TextStyle(fontSize: 20),
            ),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            shape: BeveledRectangleBorder(
                side: BorderSide(color: GREEN, width: 4),
                borderRadius: BorderRadius.circular(50)),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  print("click");
                },
                color: Colors.white,
                child: Text(
                  "Border",
                  style: TextStyle(fontSize: 20),
                ),
                padding: EdgeInsets.all(30),
                shape: Border(
                  top: BorderSide(color: RED, width: 10),
                  bottom: BorderSide(color: PURPLE, width: 10),
                  left: BorderSide(color: BLUE, width: 20),
                  right: BorderSide(color: GREEN, width: 20),
                ),
              ),
              Expanded(
                child: RaisedButton(
                  onPressed: () {
                    print("click");
                  },
                  color: GREEN,
                  child: Text(
                    "Circle\nBorder",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  padding: EdgeInsets.all(40),
                  shape: CircleBorder(
                    side: BorderSide(color: YELLOW, width: 4),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  print("click");
                },
                color: Colors.white,
                child: Text(
                  "Border\nDirectional",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.all(20),
                shape: BorderDirectional(
                  top: BorderSide(color: RED, width: 10),
                  bottom: BorderSide(color: PURPLE, width: 10),
                  start: BorderSide(color: BLUE, width: 20),
                  end: BorderSide(color: GREEN, width: 20),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  print("click");
                },
                color: Colors.white,
                child: Text(
                  "Outline\nInputBorder",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.all(20),
                shape: OutlineInputBorder(
                  borderSide: BorderSide(color: RED_LIGHT, width: 10),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  print("click");
                },
                color: RED_LIGHT,
                child: Text(
                  "Underline\nInputBorder",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.all(20),
                shape: UnderlineInputBorder(
                  borderSide: BorderSide(color: GREEN, width: 10),
                ),
              ),
            ],
          )
        ],
      );

  Widget _clipButton() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            "clipBehavior: Clip.none",
            style: TextStyle(
              fontSize: 20,
              color: TEXT_BLACK,
            ),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text(
              "BeveledRectangleBordern",
              style: TextStyle(fontSize: 40),
            ),
            color: BLUE,
            shape: BeveledRectangleBorder(
                side: BorderSide(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(100)),
            clipBehavior: Clip.none,
          ),
          SizedBox(height: 10),
          Text(
            "clipBehavior: Clip.hardEdge",
            style: TextStyle(
              fontSize: 20,
              color: TEXT_BLACK,
            ),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text(
              "BeveledRectangleBordern",
              style: TextStyle(fontSize: 40),
            ),
            color: BLUE,
            shape: BeveledRectangleBorder(
                side: BorderSide(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(100)),
            clipBehavior: Clip.hardEdge,
          ),
          SizedBox(height: 10),
          Text(
            "clipBehavior: Clip.antiAlias",
            style: TextStyle(
              fontSize: 20,
              color: TEXT_BLACK,
            ),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text(
              "BeveledRectangleBordern",
              style: TextStyle(fontSize: 40),
            ),
            color: BLUE,
            shape: BeveledRectangleBorder(
                side: BorderSide(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(100)),
            clipBehavior: Clip.antiAlias,
          ),
          SizedBox(height: 10),
          Text(
            "clipBehavior: Clip.antiAliasWithSaveLayer",
            style: TextStyle(
              fontSize: 20,
              color: TEXT_BLACK,
            ),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text(
              "BeveledRectangleBordern",
              style: TextStyle(fontSize: 40),
            ),
            color: BLUE,
            shape: BeveledRectangleBorder(
                side: BorderSide(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(100)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.RAISE_BUTTON),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                print("pressed");
              },
              child: Text(
                "Click Me~~~",
                style: TextStyle(color: RED, fontSize: 40),
              ),
            ),
            SizedBox(height: 10),
            RaisedButton(
              onPressed: () {
                print("click");
              },
              onHighlightChanged: (isHigh) {
                print("onHighlightChanged.isHigh = $isHigh");
              },
              child: Text(
                "Click Hightlight~~~",
                style: TextStyle(color: BLUE_DEEP, fontSize: 40),
              ),
            ),
            _colorsButton(),
            _themeButton(),
            _brightButton(),
            _compareColor(),
            _elevationButton(),
            _paddingButton(),
            _shapeButton(),
            _clipButton(),
            SizedBox(
              height: 600,
            )
          ],
        ),
      ),
    );
  }
}
