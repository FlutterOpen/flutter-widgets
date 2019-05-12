///
/// Created by NieBin on 2019/5/12
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class SliderPage extends StatefulWidget {
  @override
  SliderState createState() => SliderState();
}

class SliderState extends State<SliderPage> {
  double index = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.SLIDER),
      ),
      body: Slider(
        value: index < 0.0 ? 0.0 : index,
        min: 0.0,
        max: 100.0,
        onChanged: (double newValue) {
          print("newValue= $newValue");
          setState(() {
            index = newValue;
          });
        },
        label: "${index.round()} Dollar",
        onChangeStart: (value) {
          print("start = $value");
        },
        onChangeEnd: (endValue) {
          print("end = $endValue");
        },
        divisions: 100,
        semanticFormatterCallback: (value) {
          return "$value hello";
        },
      ),
    );
  }
}

//({
//Key key,
//@required this.value,
//@required this.onChanged,
//this.onChangeStart,
//this.onChangeEnd,
//this.min = 0.0,
//this.max = 1.0,
//this.divisions,
//this.label,
//this.activeColor,
//this.inactiveColor,
//this.semanticFormatterCallback,
//})
