///
/// Created by NieBin on 2019/5/12
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class CheckBoxPage extends StatefulWidget {
  @override
  CheckBoxState createState() => CheckBoxState();
}

class CheckBoxState extends State<CheckBoxPage> {
  bool _value = false;
  var _radioValue = "Name";

  Widget _checkBox() => Checkbox(
        value: _value,
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
        activeColor: RED_LIGHT,
        tristate: true,
      );

  Widget _radio() => Row(
        children: <Widget>[
          Radio(
            value: "2",
            groupValue: "2" == _radioValue ? "2" : null,
            onChanged: (value) {
              print("value = $value");
              setState(() {
                _radioValue = value;
              });
            },
          ),
          Radio(
            value: "1",
            groupValue: "1" == _radioValue ? "1" : null,
            onChanged: (value) {
              print("value = $value");
              setState(() {
                _radioValue = value;
              });
            },
          )
        ],
      );

  Widget _switch() => Switch.adaptive(
      value: _value,
      activeColor: BLUE_LIGHT,
      activeTrackColor: RED_LIGHT,
      onChanged: (value) {
        setState(() {
          _value = value;
        });
      });
  DateTime _selectTime = DateTime(2019, 3, 12);

  Widget _datePicker() => MonthPicker(
        selectedDate: _selectTime,
//        currentDate: DateTime(2019, 5, 12),
        onChanged: (time) {
          print("select= $time");
          setState(() {
            _selectTime = time;
          });
        },
        firstDate: DateTime(2019, 1, 1),
        lastDate: DateTime(3000, 12, 30),
//        displayedMonth: DateTime(2019, 5),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.CHECK_BOX),
      ),
//        body: SingleChildScrollView(
//          child: Column(
//            children: <Widget>[
//              _checkBox(),
//              _radio(),
//              _switch(),
//
//            ],
//          ),
//        ));
      body: FloatingActionButton(onPressed: () {
        showTimePicker(
          context: context,
          initialTime: TimeOfDay(
            hour: 12,
            minute: 12,
          ),

        );
      }),
    );
  }
}
