///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class BottomNavBarPage extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBarPage> {
  var _curIndex = 0;
  var contents = "Home";

  Widget _bottomNormal() => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: BLUE_DEEP,
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 30),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: BLUE_DEEP,
            icon: Icon(
              Icons.assignment_ind,
              size: 30,
            ),
            title: Text(
              "User",
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      );

  Widget _itemIconOnly() => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: BLUE_LIGHT,
            icon: Icon(
              Icons.home,
              size: 30,
              color: TEXT_BLACK_LIGHT,
            ),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 30, color: RED),
            ),
            activeIcon: Icon(
              Icons.home,
              size: 30,
              color: RED,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: BLUE_DEEP,
            icon: Icon(
              Icons.book,
              size: 30,
              color: TEXT_BLACK_LIGHT,
            ),
            title: Text(
              "Articles",
              style: TextStyle(fontSize: 30, color: TEXT_BLACK_LIGHT),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: BLUE_DEEP,
            icon: Icon(
              Icons.assignment_ind,
              size: 30,
              color: TEXT_BLACK_LIGHT,
            ),
            title: Text(
              "User",
              style: TextStyle(fontSize: 30, color: TEXT_BLACK_LIGHT),
            ),
          ),
        ],
        type: BottomNavigationBarType.shifting,
      );

  Widget _indexBottom() => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
              color: TEXT_BLACK_LIGHT,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                  fontSize: 30, color: _curIndex == 0 ? RED : TEXT_BLACK_LIGHT),
            ),
            activeIcon: Icon(
              Icons.home,
              size: 30,
              color: RED,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              size: 30,
              color: TEXT_BLACK_LIGHT,
            ),
            title: Text(
              "Articles",
              style: TextStyle(
                  fontSize: 30, color: _curIndex == 1 ? RED : TEXT_BLACK_LIGHT),
            ),
            activeIcon: Icon(
              Icons.book,
              size: 30,
              color: RED,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment_ind,
              size: 30,
              color: TEXT_BLACK_LIGHT,
            ),
            title: Text(
              "User",
              style: TextStyle(
                  fontSize: 30, color: _curIndex == 2 ? RED : TEXT_BLACK_LIGHT),
            ),
            activeIcon: Icon(
              Icons.assignment_ind,
              size: 30,
              color: RED,
            ),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _curIndex,
        onTap: (index) {
          setState(() {
            _curIndex = index;
            switch (_curIndex) {
              case 0:
                contents = "Home";
                break;
              case 1:
                contents = "Articles";
                break;
              case 2:
                contents = "User";
                break;
            }
          });
        },
      );

  Widget _colorBottom() => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 30),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              size: 30,
              color: TEXT_BLACK_LIGHT,
            ),
            title: Text(
              "Articles",
              style: TextStyle(
                  fontSize: 30, color: _curIndex == 1 ? RED : TEXT_BLACK_LIGHT),
            ),
            activeIcon: Icon(
              Icons.book,
              size: 30,
              color: RED,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment_ind,
              size: 30,
              color: TEXT_BLACK_LIGHT,
            ),
            title: Text(
              "User",
              style: TextStyle(
                  fontSize: 30, color: _curIndex == 2 ? RED : TEXT_BLACK_LIGHT),
            ),
            activeIcon: Icon(
              Icons.assignment_ind,
              size: 30,
              color: RED,
            ),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        fixedColor: PURPLE,
        currentIndex: _curIndex,
        onTap: (index) {
          setState(() {
            _curIndex = index;
            switch (_curIndex) {
              case 0:
                contents = "Home";
                break;
              case 1:
                contents = "Articles";
                break;
              case 2:
                contents = "User";
                break;
            }
          });
        },
      );

  Widget _sizeBottom() => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              "Home",
              style: TextStyle(),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              size: 30,
              color: TEXT_BLACK_LIGHT,
            ),
            title: Text(
              "Articles",
              style: TextStyle(
                  fontSize: 30, color: _curIndex == 1 ? RED : TEXT_BLACK_LIGHT),
            ),
            activeIcon: Icon(
              Icons.book,
              size: 30,
              color: RED,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment_ind,
              size: 30,
              color: TEXT_BLACK_LIGHT,
            ),
            title: Text(
              "User",
              style: TextStyle(
                  fontSize: 30, color: _curIndex == 2 ? RED : TEXT_BLACK_LIGHT),
            ),
            activeIcon: Icon(
              Icons.assignment_ind,
              size: 30,
              color: RED,
            ),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        fixedColor: PURPLE,
        currentIndex: _curIndex,
        iconSize: 50,
        onTap: (index) {
          setState(() {
            _curIndex = index;
            switch (_curIndex) {
              case 0:
                contents = "Home";
                break;
              case 1:
                contents = "Articles";
                break;
              case 2:
                contents = "User";
                break;
            }
          });
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.BOTTOM_NAV_BAR),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          contents,
          style: TextStyle(color: RED, fontSize: 40),
        ),
      ),
      bottomNavigationBar: _indexBottom(),
    );
  }
}
