///
/// Created by NieBin on 2019/5/26
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class AssetsPage extends StatefulWidget {
  @override
  _AssetsState createState() => _AssetsState();
}

class _AssetsState extends State<AssetsPage> {
  final _formKey = GlobalKey<FormState>();
  final _fieldKey = GlobalKey<FormFieldState>();
  var _value = "Hello world";
  var _count = 0;

//  this.onWillPop,
//  this.onChanged,
  Future<bool> _willPop() async {
    return _formKey.currentState.validate();
  }

  Widget _form() => Form(
        key: _formKey,
        autovalidate: true,
        onWillPop: _willPop,
        onChanged: () {
          print("onChange.value= ${_fieldKey.currentState.value}");
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              key: _fieldKey,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                if (value == "hello world") {
                  return 'This is is hello world';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState.validate()) {
                    // Process data.
                    print("print you.");
                  }
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      );

  //  @required this.text,
  //    this.textAlign = TextAlign.start,
  //    this.textDirection,
  //    this.softWrap = true,
  //    this.overflow = TextOverflow.clip,
  //    this.textScaleFactor = 1.0,
  //    this.maxLines,
  //    this.locale,
  //    this.strutStyle,
  //    this.textWidthBasis = TextWidthBasis.parent,
  //
  List<TextSpan> _spans() => [
        TextSpan(
          style: TextStyle(color: RED_LIGHT),
          text: "Hello",
        ),
        TextSpan(
          style: TextStyle(color: BLUE_DEEP, fontSize: 20),
          text: "World",
        ),
      ];

  Widget _rich() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RichText(
            text: TextSpan(
                style: TextStyle(),
//                text: "Hello",
                children: _spans()),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      );

// @required this.builder,
//    this.onSaved,
//    this.validator,
//    this.initialValue,
//    this.autovalidate = false,
//    this.enabled = true,
//    this.enabled = false,
  Widget _formField() => FormField(
        builder: (FormFieldState s) {
          return FloatingActionButton(
            child: Text("Button $_value"),
            onPressed: () {
              _count++;
              s.setValue("${s.value}$_count");
              s.save();
            },
          );
        },
        onSaved: (String v) {
          print("value: $v");
          setState(() {
            _value = v;
          });
        },
        initialValue: _value,
        validator: (String v) {
          if (v.isEmpty) {
            return "Do not allow you to empty.";
          }
        },
        autovalidate: true,
        enabled: true,
      );

  Widget _defaultStyle() => DefaultTextStyle(
        style: TextStyle(color: BLUE),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Hello\ngive me some shine."),
            Text("World"),
          ],
        ),
      );

  //TODO no done.
  Widget _rawImg(BuildContext context) => RawImage();

  Widget _assetBundle() {
    DefaultAssetBundle.of(context).loadString("");
    AssetImage(
      "",
      bundle: DefaultAssetBundle.of(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.ASSET_PAGE),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _form(),
            _rich(),
            _formField(),
            _defaultStyle(),
          ],
        ),
      ),
    );
  }
}
