///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class FlutterLogoPage extends StatefulWidget {
  @override
  _FlutterLogoState createState() => _FlutterLogoState();
}

class _FlutterLogoState extends State<FlutterLogoPage> {
  var _size = 50.0;

  Widget _styleLogo() => Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "markOnly",
                style: TextStyle(color: Colors.blueAccent, fontSize: 30),
              ),
              Text(
                "horizontal",
                style: TextStyle(color: Colors.orangeAccent, fontSize: 30),
              ),
              Text(
                "stacked",
                style: TextStyle(color: Colors.purpleAccent, fontSize: 30),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlutterLogo(
                size: 100,
                colors: Colors.blue,
                style: FlutterLogoStyle.markOnly,
              ),
              FlutterLogo(
                size: 100,
                colors: Colors.orange,
                style: FlutterLogoStyle.horizontal,
              ),
              FlutterLogo(
                size: 100,
                colors: Colors.purple,
                style: FlutterLogoStyle.stacked,
              ),
            ],
          ),
        ],
      );

  Widget _durLogo() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlutterLogo(
            size: _size,
            colors: Colors.blue,
            duration: Duration(seconds: 2),
            curve: Curves.bounceOut,
          ),
          Container(
            width: 100,
            height: 100,
            child: RaisedButton(

              padding: EdgeInsets.all(10),
              color: GREEN,
              child: Text(
                "Change\nSize",
                style: TextStyle(
                  color: TEXT_BLACK,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              onPressed: () {
                setState(() {
                  _size += 50;
                  if (_size > 200) {
                    _size = 50.0;
                  }
                });
              },
              shape: CircleBorder(side: BorderSide(color: RED, width: 10)),
            ),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.FLUTTER_LOGO),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //our code
            FlutterLogo(
              size: 100,
            ),
            Container(
              constraints: BoxConstraints.expand(height: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlutterLogo(
                    colors: Colors.red,
                    size: 100,
                  ),
                  FlutterLogo(
                    colors: Colors.green,
                    size: 100,
                  ),
                  FlutterLogo(
                    colors: Colors.yellow,
                    size: 100,
                  ),
                ],
              ),
            ),
            _styleLogo(),
            _durLogo(),
            SizedBox(height: 600)
          ],
        ),
      ),
    );
  }
}

///   this.colors,
//    this.textColor = const Color(0xFF616161),
//    this.style = FlutterLogoStyle.markOnly,
//    this.duration = const Duration(milliseconds: 750),
//    this.curve = Curves.fastOutSlowIn,
