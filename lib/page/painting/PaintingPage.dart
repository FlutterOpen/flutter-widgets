///
/// Created by NieBin on 2019/6/15
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';
import 'dart:math';

class PaintingPage extends StatefulWidget {
  @override
  _OpacityState createState() => _OpacityState();
}

class _OpacityState extends State<PaintingPage> {
  Widget _opacity() => Container(
        constraints: BoxConstraints.expand(height: 100),
        child: Opacity(
          opacity: 0.7,
          child: Text(
            "Opacity",
            style: TextStyle(color: TEXT_BLACK),
          ),
        ),
        color: RED_LIGHT,
      );

  Widget _transform() => Container(
        constraints: BoxConstraints.expand(height: 100),
        child: Transform.rotate(
          angle: pi / 2,
          child: Center(
            child: Text("Transform"),
          ),
        ),
        color: BLUE_LIGHT,
      );

  Widget _decorated() => Container(
      constraints: BoxConstraints.expand(height: 100),
      child: DecoratedBox(
          position: DecorationPosition.foreground,
          decoration: ShapeDecoration(
            shape: StadiumBorder(
              side: BorderSide(color: TEXT_BLACK, width: 10),
            ),
          ),
          child: Container(
            color: PURPLE,
            child: Center(
              child: Text("DecoratedBox"),
            ),
          )));

  Widget _fraction() => Container(
        constraints: BoxConstraints.expand(height: 100),
        child: FractionalTranslation(
          translation: Offset(0.3, 0.1),
          child: Container(
            color: BLUE_LIGHT,
          ),
        ),
      );

  Widget _rotation() => Container(
        constraints: BoxConstraints.expand(height: 100),
        child: RotatedBox(
          quarterTurns: 3,
          child: Container(
            color: GREEN,
            child: Center(
              child: Text("RotatedBox"),
            ),
          ),
        ),
      );

  Widget _clipOval() => Container(
        constraints: BoxConstraints.expand(height: 100),
        child: ClipOval(
          clipper: MyClipper(),
          child: Container(
            color: RED_LIGHT,
          ),
        ),
      );

  Widget _clipPath() => Container(
        constraints: BoxConstraints.expand(height: 100),
        child: ClipPath(
          clipper: MPathClipper(),
          child: Container(color: PURPLE),
        ),
      );

  Widget _clipRect() => Container(
        constraints: BoxConstraints.expand(height: 100),
        child: ClipRect(
          clipper: MyClipper(),
          child: Container(
            color: BLUE_DEEP,
          ),
        ),
      );

  Widget _custom() => Container(
        constraints: BoxConstraints.expand(height: 200),
        child: CustomPaint(
          painter: MCustomPainter(),
          child: Center(
            child: Text("CustomPaint"),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello world"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _opacity(),
            _transform(),
            _decorated(),
            _fraction(),
            _rotation(),
            _clipOval(),
            _clipPath(),
            _clipRect(),
            _custom(),
          ],
        ),
      ),
    );
  }
}

class MCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2),
        100,
        Paint()
          ..color = RED_LIGHT
          ..isAntiAlias = true
          ..strokeWidth = 10);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class MPathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..moveTo(100.0, 50.0)
      ..addArc(
          Rect.fromCenter(
              center: Offset(100.0, 50.0), height: 50.0, width: 50.0),
          0,
          pi / 2);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromCenter(
        center: Offset(50.0, 50.0), height: 100.0, width: 50.0);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}
