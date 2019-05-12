///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldState createState() => _TextFieldState();
}

class _TextFieldState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.TEXT_FIELD),
      ),
      body: TextField(
        controller: TextEditingController(text: "Hello"),
        decoration: InputDecoration(
            labelText: "World",
            helperText: "AAA",
            hintText: "HHH",
//            errorText: "What?",
            hasFloatingPlaceholder: true,
            isDense: false,
            contentPadding: EdgeInsets.symmetric(vertical: 10),
//            prefixText: "name:",
            prefixIcon: Icon(Icons.airplanemode_active),
            suffixText: "Suf",
            suffixIcon: Icon(Icons.forward),
            counterText: "1000",
            filled: false,
            fillColor: RED,
            errorBorder:
                UnderlineInputBorder(borderRadius: BorderRadius.circular(100)),
            semanticCounterText: "semati",
            alignLabelWithHint: true),
        keyboardType: TextInputType.url,
        onTap: () {
          print("Tab");
        },
        onChanged: (value) {
          print("value: $value");
        },
        onSubmitted: (v) {
          print("v: $v");
        },
      ),
    );
  }
}
//this.icon,
//this.labelText,
//this.labelStyle,
//this.helperText,
//this.helperStyle,
//this.hintText,
//this.hintStyle,
//this.hintMaxLines,
//this.errorText,
//this.errorStyle,
//this.errorMaxLines,
//this.hasFloatingPlaceholder = true,
//this.isDense,
//this.contentPadding,
//this.prefixIcon,
//this.prefix,
//this.prefixText,
//this.prefixStyle,
//this.suffixIcon,
//this.suffix,
//this.suffixText,
//this.suffixStyle,
//this.counterText,
//this.counterStyle,
//this.filled,
//this.fillColor,
//this.errorBorder,
//this.focusedBorder,
//this.focusedErrorBorder,
//this.disabledBorder,
//this.enabledBorder,
//this.border,
//this.enabled = true,
//this.semanticCounterText,
//this.alignLabelWithHint,
