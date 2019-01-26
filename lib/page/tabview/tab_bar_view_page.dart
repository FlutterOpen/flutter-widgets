///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class TabBarViewPage extends StatefulWidget {
  @override
  _TabBarViewState createState() => _TabBarViewState();
}

class _TabBarViewState extends State<TabBarViewPage>
    with SingleTickerProviderStateMixin {
  List<Widget> _textTab() => [
        Tab(text: "Home"),
        Tab(text: "Articles"),
        Tab(text: "User"),
      ];

  List<Widget> _tabTwoParameters() => [
        Tab(
          text: "Home",
          icon: Icon(Icons.home),
        ),
        Tab(text: "Articles", icon: Icon(Icons.book)),
        Tab(
          text: "User",
          icon: Icon(Icons.account_box),
        ),
      ];

  List<Widget> _tabChildParameters() => [
        Tab(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(),
            color: YELLOW,
            child: Text("Home"),
          ),
        ),
        Tab(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(),
            color: BLUE_DEEP,
            child: Text("Articles"),
          ),
        ),
        Tab(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(),
            color: BLUE,
            child: Text("User"),
          ),
        ),
      ];

  List<Widget> _tabScroll() => [
        Tab(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(width: 100),
            color: YELLOW,
            child: Text("Home"),
          ),
        ),
        Tab(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(width: 100),
            color: BLUE_DEEP,
            child: Text("Articles"),
          ),
        ),
        Tab(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(width: 100),
            color: BLUE,
            child: Text("User"),
          ),
        ),
        Tab(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(width: 100),
            color: GREEN,
            child: Text("Add"),
          ),
        ),
        Tab(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(width: 100),
            color: BLUE_LIGHT,
            child: Text("Post"),
          ),
        ),
        Tab(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(width: 100),
            color: PURPLE,
            child: Text("Comments"),
          ),
        ),
      ];

  TabBar _tabBarIndicatorColor() => TabBar(
        tabs: _tabTwoParameters(),
        indicatorColor: BLUE,
        indicatorWeight: 10,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
      );

  TabBar _tabBarIndicatorUnder() => TabBar(
        tabs: _tabTwoParameters(),
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: PURPLE, width: 4),
          insets: EdgeInsets.symmetric(horizontal: 20),
        ),
      );

  TabBar _tabBarIndicatorShape() => TabBar(
        tabs: _tabTwoParameters(),
        indicator: ShapeDecoration(
          shape: BeveledRectangleBorder(
              side: BorderSide(color: TEXT_BLACK),
              borderRadius: BorderRadius.circular(30)),
          gradient: SweepGradient(
            colors: [YELLOW, PURPLE, RED, GREEN, BLUE],
          ),
        ),
      );

  TabBar _tabBarLabel() => TabBar(
        tabs: _tabTwoParameters(),
        labelColor: RED,
        labelPadding: EdgeInsets.symmetric(vertical: 10),
        labelStyle: TextStyle(fontSize: 20),
        unselectedLabelColor: BLUE_LIGHT,
        unselectedLabelStyle: TextStyle(fontSize: 14),
        onTap: (index) {
          var content = "";
          switch (index) {
            case 0:
              content = "Home";
              break;
            case 1:
              content = "Articles";
              break;
            case 2:
              content = "User";
              break;
            default:
              content = "Other";
              break;
          }
          print("You are clicking the $content");
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.TAB_VIEW),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            Container(
//              constraints: BoxConstraints.expand(height: 50),
              child: _tabBarLabel(),
            ),
            Expanded(
              child: Container(
                child: TabBarView(children: [
                  Container(
                    child: Text("Home Body"),
                  ),
                  Container(
                    child: Text("Articles Body"),
                  ),
                  Container(
                    child: Text("User Body"),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
