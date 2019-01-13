///
/// Created by NieBin on 2018/12/26
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import 'package:flutter/material.dart';
import 'dart:math';

class SizeKeyConst {
  static const DEVICE_KEY = "device_size";
}

class SizeUtil {
  static Map<String, SizeUtil> _keyValues = Map();

  static initDesignSize() {
//    getInstance(key: SizeKeyConst.ROUND_ANGLE_KEY).designSize =
//        Size(500.0, 500.0);
  }

  static SizeUtil getInstance({key = SizeKeyConst.DEVICE_KEY}) {
    if (_keyValues.containsKey(key)) {
      return _keyValues[key];
    } else {
      _keyValues[key] = SizeUtil();
      return _keyValues[key];
    }
  }

  Size _designSize;

  set designSize(Size size) {
    _designSize = size;
  }

  //logic size in device
  Size _logicalSize;

  //device pixel radio.

  get width => _logicalSize.width;

  get height => _logicalSize.height;

  set logicSize(Size size) => _logicalSize = size;

  //@param w is the design w;
  double getAxisX(double w) {
    return (w * width) / _designSize.width;
  }

// the y direction
  double getAxisY(double h) {
    return (h * height) / _designSize.height;
  }

  // diagonal direction value with design size s.
  double getAxisBoth(double s) {
    return s *
        sqrt((width * width + height * height) /
            (_designSize.width * _designSize.width +
                _designSize.height * _designSize.height));
  }
}
