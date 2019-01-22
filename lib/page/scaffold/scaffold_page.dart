///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class ScaffoldPage extends StatefulWidget {
  @override
  _ScaffoldState createState() => _ScaffoldState();
}

class _ScaffoldState extends State<ScaffoldPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  var _index = 0;

  Widget _drawer() => Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text("Articles"),
              automaticallyImplyLeading: false,
              backgroundColor: RED_LIGHT,
              elevation: 0,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              constraints: BoxConstraints.expand(height: 80),
              child: Text(
                "This is my first article.",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 0,
              color: TEXT_BLACK,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              constraints: BoxConstraints.expand(height: 80),
              child: Text(
                "This is my second article.",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 0,
              color: TEXT_BLACK,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              constraints: BoxConstraints.expand(height: 80),
              child: Text(
                "This is my third article.",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 0,
              color: TEXT_BLACK,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              constraints: BoxConstraints.expand(height: 80),
              child: Text(
                "This is my forth article.",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 0,
              color: TEXT_BLACK,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              constraints: BoxConstraints.expand(height: 80),
              child: Text(
                "This is my fifth article.",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 0,
              color: TEXT_BLACK,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              constraints: BoxConstraints.expand(height: 80),
              child: Text(
                "This is my sixth article.",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 0,
              color: TEXT_BLACK,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              constraints: BoxConstraints.expand(height: 80),
              child: Text(
                "This is my seventh article.",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 0,
              color: TEXT_BLACK,
            ),
          ],
        ),
      );

  Widget _bottomBar() => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 20),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.linked_camera),
              title: Text(
                "Capture",
                style: TextStyle(fontSize: 20),
              )),
        ],
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        fixedColor: RED,
        iconSize: 40,
      );

  Widget _bottomSheet() {
    return BottomSheet(
      onClosing: () {},
      builder: (context) => Container(
            color: YELLOW,
            padding: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(height: 200),
            child: Text(
              "BottomSheet",
              style: TextStyle(fontSize: 30),
            ),
          ),
      elevation: 4,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(PageName.SCAFFOLD),
      ),
      body: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(height: 50),
        color: RED,
        child: Text(
          "body",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      floatingActionButton: Container(
        height: 100,
        width: 100,
        child: FloatingActionButton(
          onPressed: () {
            print("click floating");
          },
          child: Text(
            "Refresh",
            style: TextStyle(fontSize: 20),
          ),
          backgroundColor: BLUE_DEEP,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      persistentFooterButtons: <Widget>[
        RaisedButton(
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
          color: BLUE,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        RaisedButton(
          onPressed: () {
            _scaffoldKey.currentState.hideCurrentSnackBar();
            _scaffoldKey.currentState
                .showBottomSheet((context) => _bottomSheet());
          },
          color: RED,
          child: Icon(
            Icons.clear,
            color: Colors.white,
          ),
        ),
        Builder(
          builder: (context) => RaisedButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                color: BLUE_DEEP,
                child: Icon(
                  Icons.forward,
                  color: Colors.white,
                ),
              ),
        ),
      ],
      drawer: _drawer(),
      bottomNavigationBar: _bottomBar(),
//      bottomSheet: _bottomSheet(),
      backgroundColor: PURPLE,
//      primary: false,
    );
  }
}

///Scaffold(
//      key: _scaffoldKey,
//      appBar: AppBar(
//        title: Text(PageName.SCAFFOLD),
//      ),
//      body: Text("This is an empty page"),
//      floatingActionButton: FloatingActionButton(
//        onPressed: () {},
//        child: Container(
//          child: Row(
//            children: <Widget>[
//              Icon(Icons.add),
//              Text("Hello"),
//            ],
//          ),
//        ),
//        tooltip: "hello",
//        foregroundColor: Colors.white,
//        backgroundColor: GREEN,
//      ),
////      RaisedButton(
////        onPressed: () {},
////        child: Icon(
////          Icons.refresh,
////          size: 40,
////          color: Colors.white,
////        ),
////        padding: EdgeInsets.all(30),
////        color: BLUE_DEEP,
////        shape: CircleBorder(side: BorderSide(style: BorderStyle.none)),
////      ),
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
//      persistentFooterButtons: <Widget>[
//        RaisedButton(
//          onPressed: () {},
//          color: BLUE,
//          child: Icon(
//            Icons.add,
//            color: Colors.white,
//          ),
//        ),
//        RaisedButton(
//          onPressed: () {
//            _scaffoldKey.currentState.openDrawer();
//          },
//          color: RED,
//          child: Icon(
//            Icons.clear,
//            color: Colors.white,
//          ),
//        ),
//        RaisedButton(
//          onPressed: () {
//            print("Hello");
//          },
//          color: PURPLE,
//          child: Icon(
//            Icons.remove,
//            color: Colors.white,
//          ),
//        ),
//        Builder(
//          builder: (context) => RaisedButton(
//                onPressed: () {
//                  Scaffold.of(context).openDrawer();
//                },
//                color: GREEN,
//                child: Icon(
//                  Icons.refresh,
//                  color: Colors.white,
//                ),
//              ),
//        )
//      ],
//      drawer: Drawer(
//        child: Container(
//          child: Text("Hello world"),
//        ),
//        elevation: 30,
//      ),
////      this.appBar,
////      this.body,
////      this.floatingActionButton,
////      this.floatingActionButtonLocation,
////      this.floatingActionButtonAnimator,
////      this.persistentFooterButtons,
////      this.drawer,
////      this.endDrawer,
////      this.bottomNavigationBar,
////      this.bottomSheet,
////      this.backgroundColor,
////      this.resizeToAvoidBottomPadding = true,
////      this.primary = true,
//    );
