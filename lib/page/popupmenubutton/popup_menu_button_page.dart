///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class PopupMenuButtonPage extends StatefulWidget {
  @override
  _PopupMenuButtonState createState() => _PopupMenuButtonState();
}

class _PopupMenuButtonState extends State<PopupMenuButtonPage> {
  @override
  Widget build(BuildContext context) {
    Widget _simplePopup() => PopupMenuButton<int>(
          itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text("First"),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("Second"),
                ),
              ],
        );
    Widget _threeItemPopup() => PopupMenuButton(
          itemBuilder: (context) {
            var list = List<PopupMenuEntry<Object>>();
            list.add(
              PopupMenuItem(
                child: Text("Setting Language"),
                value: "1",
              ),
            );
            list.add(
              PopupMenuDivider(
                height: 10,
              ),
            );
            list.add(
              CheckedPopupMenuItem(
                child: Text(
                  "English",
                  style: TextStyle(color: TEXT_BLACK),
                ),
                value: "2",
                checked: true,
              ),
            );
            return list;
          },
          icon: Icon(
            Icons.settings,
            size: 50,
            color: Colors.white,
          ),
        );
    Widget _selectPopup() => PopupMenuButton<int>(
          itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text("First"),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("Second"),
                ),
              ],
          initialValue: 2,
          onCanceled: () {
            print("You have canceled the menu.");
          },
          onSelected: (value) {
            print("value:$value");
          },
          icon: Icon(Icons.list),
        );
    Widget _paddingPopup() => PopupMenuButton<int>(
          itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "English",
                    style:
                        TextStyle(color: PURPLE, fontWeight: FontWeight.w700),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(
                    "Chinese",
                    style:
                        TextStyle(color: PURPLE, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
          elevation: 4,
          padding: EdgeInsets.symmetric(horizontal: 50),
        );
    Widget _childPopup() => PopupMenuButton<int>(
          itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "Earth",
                    style: TextStyle(
                        color: TEXT_BLACK, fontWeight: FontWeight.w700),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(
                    "Moon",
                    style: TextStyle(
                        color: TEXT_BLACK, fontWeight: FontWeight.w700),
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text(
                    "Sun",
                    style: TextStyle(
                        color: TEXT_BLACK, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
          child: Container(
            height: 50,
            width: 200,
            decoration: ShapeDecoration(
              color: GREEN,
              shape: StadiumBorder(
                side: BorderSide(color: TEXT_BLACK, width: 2),
              ),
            ),
            child: Icon(Icons.airplanemode_active),
          ),
        );
    Widget _offsetPopup() => PopupMenuButton<int>(
          itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "Flutter Open",
                    style: TextStyle(
                        color: TEXT_BLACK, fontWeight: FontWeight.w700),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(
                    "Flutter Tutorial",
                    style: TextStyle(
                        color: TEXT_BLACK, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
          icon: Icon(Icons.library_add),
//          offset: Offset(0, 100),
        );
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.POPUP_MENU_BUTTON),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //our code.
            _simplePopup(),
            SizedBox(height: 10),
            Container(
              color: RED,
              constraints: BoxConstraints.expand(height: 60),
              child: _threeItemPopup(),
            ),
            SizedBox(height: 10),
            Container(
              color: BLUE,
              constraints: BoxConstraints.expand(height: 60),
              child: _selectPopup(),
            ),
            SizedBox(height: 10),
            Container(
              color: PURPLE,
              child: _paddingPopup(),
            ),
            SizedBox(height: 10),
            Container(
              child: _childPopup(),
            ),
            SizedBox(height: 10),
            Container(
              color: BLUE_LIGHT,
              child: _offsetPopup(),
            ),
            SizedBox(height: 600)
          ],
        ),
      ),
    );
  }
}
