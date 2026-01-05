import 'package:flutter/material.dart';

const double _designWidth = 375.0;
const double _designHeight = 812.0;

extension SizeConfig on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;

  double get screenHeight => MediaQuery.of(this).size.height;

  bool get isLandscape =>
      MediaQuery.of(this).orientation == Orientation.landscape;

  double w(double width) {
    return (width / _designWidth) * screenWidth;
  }

  double h(double height) {
    return (height / _designHeight) * screenHeight;
  }

  double sp(double fontSize) {
    return (fontSize / _designWidth) * screenWidth;
  }

  SizedBox gapH(double height) => SizedBox(height: h(height));

  /// مسافة أفقية (Horizontal Space)
  SizedBox gapW(double width) => SizedBox(width: w(width));
}
