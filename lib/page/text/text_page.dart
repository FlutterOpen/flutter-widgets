///
/// Created by NieBin on 2019/1/14
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class TextPage extends StatefulWidget {
  @override
  _TextState createState() => _TextState();
}

class _TextState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    var content;
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("Hello World1"),
            Text(
              "TextStyle with easy parameters",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                background: Paint()
                  ..color = Color(0xffc7e5b4)
                  ..style = PaintingStyle.fill,
              ),
            ),
            Text(
              "TextStyle with foreground",
              style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()
                    ..color = Color(0xffA8CBFD)
                    ..strokeWidth = 1
                    ..style = PaintingStyle.stroke),
            ),
            Text(
              "TextStyle with fontWeight",
              style: TextStyle(
                fontSize: 20,
                color: RED,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "TextStyle with fontStyle",
              style: TextStyle(
                fontSize: 20,
                color: BLUE_LIGHT,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "TextStyle with letterSpacing 4",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                background: Paint()..color = GREEN,
                letterSpacing: 4,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "TextStyle with letterSpacing 20",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                background: Paint()..color = GREEN,
                letterSpacing: 10,
              ),
            ),
            Text(
              "TextStyle with wordSpacing 1",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  background: Paint()..color = RED,
                  wordSpacing: 1),
            ),
            Text(
              "TextStyle with wordSpacing 20",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  background: Paint()..color = RED,
                  wordSpacing: 20),
            ),
            SizedBox(height: 10),
            Text(
              "TextStyle with Shadow",
              style: TextStyle(fontSize: 30, color: BLUE_DEEP, shadows: [
                Shadow(color: RED, offset: Offset(1, 2), blurRadius: 2)
              ]),
            ),
            Text(
              "TextStyle with Shadow",
              style: TextStyle(fontSize: 30, color: RED, shadows: [
                Shadow(
                    color: Colors.black, offset: Offset(1, 4), blurRadius: 1),
                Shadow(color: BLUE_DEEP, offset: Offset(2, 1), blurRadius: 2)
              ]),
            ),
            SizedBox(height: 10),
            Text(
              "TextStyle with decoration underline",
              style: TextStyle(
                  fontSize: 20,
                  background: Paint()..color = GREEN,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                  decorationStyle: TextDecorationStyle.wavy),
            ),
            Text(
              "TextStyle with decoration lineThrough",
              style: TextStyle(
                  fontSize: 20,
                  background: Paint()..color = BLUE_LIGHT,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.black,
                  decorationStyle: TextDecorationStyle.double),
            ),
            Text(
              "Flutter open: TextStyle with fontFamily",
              style: TextStyle(fontFamily: "manigu", fontSize: 40, color: RED),
            ),
            Container(
              constraints: BoxConstraints.expand(height: 40),
              color: BLUE,
              child: Text(
                "TextAlign end",
                style: TextStyle(background: Paint()..color = RED),
                textAlign: TextAlign.end,
              ),
            ),
            Container(
              color: YELLOW,
              constraints: BoxConstraints.expand(height: 40, width: 160),
              child: Text(
                "textDirection draw from right to left",
                textDirection: TextDirection.rtl,
              ),
            ),
            Container(
              color: RED,
              constraints: BoxConstraints.expand(height: 40, width: 160),
              child: Text("softWrap true Text Text Text Text", softWrap: true),
            ),
            Container(
              color: BLUE,
              constraints: BoxConstraints.expand(height: 40, width: 160),
              child:
                  Text("softWrap false Text Text Text Text", softWrap: false),
            ),
            Container(
              color: YELLOW,
              constraints: BoxConstraints.expand(height: 40, width: 240),
              child: Text(
                "overflow TextOverflow.ellipsis: Text Text Text",
                softWrap: false,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              color: RED_LIGHT,
              constraints: BoxConstraints.expand(height: 40, width: 230),
              child: Text(
                "max lines = 1 content content content content content",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              "textScaleFactor = 1 fontSize = 16 ",
              style: TextStyle(fontSize: 16, color: BLUE),
              textScaleFactor: 1,
            ),
            Text(
              "textScaleFactor = 1.5 fontSize = 20 ",
              style: TextStyle(fontSize: 16, color: RED),
              textScaleFactor: 1.2,
            ),
          ],
        ),
      ),
    );
  }
}
