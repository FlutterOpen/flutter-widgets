///
/// Created by NieBin on 2019/6/15
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';
import 'NavPage.dart';

class NavigatorPage extends StatefulWidget {
  @override
  _NavigatorState createState() => _NavigatorState();
}

class _NavigatorState extends State<NavigatorPage> {
  Future<void> _startPage() async {
    var content = await Navigator.push(
      context,
      MaterialPageRoute<String>(
        builder: (context) => NavPage(),
      ),
    );
    print("Content: $content");
  }

  Widget _pushWithBack() => FlatButton(
        onPressed: () {
          print("Hello world");
          _startPage();
        },
        child: Text("jump"),
        color: PURPLE,
      );

  Future<void> _transPage() {
    Navigator.push(
        context,
        PageRouteBuilder(
            opaque: false,
            barrierColor: GREEN,
            pageBuilder: (BuildContext context, _, __) {
              return NavPage();
            },
            transitionsBuilder:
                (___, Animation<double> animation, ____, Widget child) {
              return FadeTransition(
                opacity: animation,
                child: RotationTransition(
                  turns: Tween<double>(begin: 0.5, end: 2.0).animate(animation),
                  child: child,
                ),
              );
            }));
  }

  Widget _transButton() => FlatButton(
        child: Text("Trans"),
        color: RED_LIGHT,
        onPressed: () {
          _transPage();
        },
      );

  Widget _slidButton(BuildContext context) => FlatButton(
        child: Text("Slid"),
        color: RED_LIGHT,
        onPressed: () {
          Navigator.push(context, SlideRightRoute(page: NavPage()));
        },
      );

  Widget _doublePage(BuildContext context) => Container(
        constraints: BoxConstraints.expand(height: 100),
        child: FlatButton(
          child: Text("Double Page"),
          color: RED_LIGHT,
          onPressed: () {
            Navigator.push(context,
                EnterExitRoute(exitPage: widget, enterPage: NavPage()));
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.INTER_NAV),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(height: 100),
            child: _pushWithBack(),
          ),
          Container(
            constraints: BoxConstraints.expand(height: 100),
            child: _transButton(),
          ),
          Container(
            constraints: BoxConstraints.expand(height: 100),
            child: _slidButton(context),
          ),
          _doublePage(context),
        ],
      ),
    );
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;

  SlideRightRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(-1, 0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              ),
          barrierColor: GREEN,
        );
}

class EnterExitRoute extends PageRouteBuilder {
  final Widget enterPage;
  final Widget exitPage;

  EnterExitRoute({this.exitPage, this.enterPage})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              enterPage,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              Stack(
                children: <Widget>[
                  SlideTransition(
                    position: new Tween<Offset>(
                      begin: const Offset(0.0, 0.0),
                      end: const Offset(-1.0, -1.0),
                    ).animate(animation),
                    child: exitPage,
                  ),
                  SlideTransition(
                    position: new Tween<Offset>(
                      begin: const Offset(1.0, 1.0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: enterPage,
                  )
                ],
              ),
        );
}
