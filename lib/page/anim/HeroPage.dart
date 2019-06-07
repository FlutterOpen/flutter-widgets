///
/// Created by NieBin on 2019/6/8
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';
import 'PhotoHero.dart';

class HeroPage extends StatefulWidget {
  @override
  _HeroState createState() => _HeroState();
}

class _HeroState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(PageName.ANIM_HERO),
      ),
      body: Center(
        child: PhotoHero(
          photo: PageImage.FLUTTER_OPEN,
          width: 400.0,
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (BuildContext context) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Change pic Page'),
                ),
                body: Container(
                  // The blue background emphasizes that it's a new route.
                  color: RED_LIGHT,
                  padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.topLeft,
                  child: PhotoHero(
                    photo: PageImage.FLUTTER_OPEN,
                    width: 100.0,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              );
            }));
          },
        ),
      ),
    );
  }
}
