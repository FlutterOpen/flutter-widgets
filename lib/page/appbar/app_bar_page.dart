///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class AppBarPage extends StatefulWidget {
  @override
  _AppBarState createState() => _AppBarState();
}

class _AppBarState extends State<AppBarPage> {
  AppBar _titleBar() => AppBar(
        title: Text(PageName.APP_BAR),
      );

  AppBar _autoLeadBar() => AppBar(
        title: Text(PageName.APP_BAR),
        automaticallyImplyLeading: false,
      );

  AppBar _leadingBar() => AppBar(
        title: Text(PageName.APP_BAR),
        leading: InkWell(
          child: Icon(Icons.menu),
          onTap: () {
            print("click menu");
          },
        ),
      );

  AppBar _actionBar() => AppBar(
        title: Text(PageName.APP_BAR),
        actions: <Widget>[
          InkWell(
            child: Icon(Icons.search),
            onTap: () {
              print("click search");
            },
          ),
          SizedBox(width: 10),
          InkWell(
            child: Icon(Icons.more_vert),
            onTap: () {
              print("click more");
            },
          ),
          SizedBox(width: 20)
        ],
      );

  Widget _bottomBar() => AppBar(
        title: Text(PageName.APP_BAR),
        bottom: PreferredSize(
          child: Container(
            alignment: Alignment.center,
            color: RED,
            constraints: BoxConstraints.expand(height: 50),
            child: Text(
              "bottom",
              style: TextStyle(fontSize: 30),
            ),
          ),
          preferredSize: Size(50, 50),
        ),
      );

  Widget _elevationBar() => AppBar(
        title: Text(PageName.APP_BAR),
        elevation: 10,
      );

  Widget _backgroundBar() => AppBar(
        title: Text(PageName.APP_BAR),
        backgroundColor: PURPLE,
      );

  Widget _brightBar() => AppBar(
        title: Text(PageName.APP_BAR),
//        brightness: Brightness.dark,dark
      );

  Widget _iconThemeBar() => AppBar(
        title: Text(PageName.APP_BAR),
        iconTheme: IconThemeData(color: Colors.white, size: 20, opacity: 0.9),
      );

  Widget _textThemeBar() => AppBar(
        title: Text(PageName.APP_BAR),
        textTheme:
            TextTheme(title: TextStyle(color: Colors.white, fontSize: 30)),
      );

  Widget _primaryBar() => AppBar(
        title: Text(PageName.APP_BAR),
        primary: false,
      );

  Widget _centerBar() => AppBar(
        title: Text(PageName.APP_BAR),
        centerTitle: true,
      );

  Widget _spaceBar() => AppBar(
        title: Text(PageName.APP_BAR),
        titleSpacing: 20,
      );

  Widget _toolBar() => AppBar(
        title: Text(PageName.APP_BAR),
        toolbarOpacity: 0.5,
      );

  Widget _bottomOpBar() => AppBar(
        title: Text(PageName.APP_BAR),
        bottomOpacity: 0.5,
        bottom: PreferredSize(
          child: Container(
            alignment: Alignment.center,
            color: RED,
            constraints: BoxConstraints.expand(height: 50),
            child: Text(
              "bottom with  bottomOpacity = 0.5 ",
              style: TextStyle(fontSize: 20),
            ),
          ),
          preferredSize: Size(50, 50),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
//              title: Text("hello"),
            expandedHeight: 100,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(PageName.APP_BAR),
              centerTitle: false,
              collapseMode: CollapseMode.parallax,
              background: Container(
                color: RED,
                constraints: BoxConstraints.expand(height: 100),
                child: Image.asset(
                  PageImage.FLUTTER_OPEN,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 1000,
              ),
            ]),
          )
        ],
      ),
    );
  }
}
