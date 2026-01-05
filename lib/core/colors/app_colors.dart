import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color _white = Color(0xFFFFFFFF);
  static const Color _secondary = Color(0xff05162C);
  static const Color _starColor = Color(0xffF9E000);
  static const Color _red = Color(0xFFCC1010);
  static const Color _gray = Color(0xFF808080);
  static const Color _scaffoldBg = Color(0xFFF8F9FD);

  static const Color _warningColor = Color(0xfffffa726);
  static const MaterialColor _mainColorLight = MaterialColor(0xff1E429F, {
    10: Color(0xFFE9EBF8),
    20: Color(0xFFB6CDE9),
    30: Color(0xFF93B4DE),
    40: Color(0xFF6292CF),
    50: Color(0xFF437DC6),
    60: Color(0xFF145DB8),
    70: Color(0xFF1255A7),
    80: Color(0xFF0E4283),
    90: Color(0xFF0B3365),

    100: Color(0xFF08274D),
  });

  static const MaterialColor _black = MaterialColor(0xFF242424, {
    10: Color(0xFFE9E9E9),
    20: Color(0xFFD3D3D3),
    30: Color(0xFFBDBDBD),
    40: Color(0xFFA7A7A7),
    50: Color(0xFF919191),
    60: Color(0xFF7C7C7C),
    70: Color(0xFF666666),
    80: Color(0xFF505050),
    90: Color(0xFF3A3A3A),
    100: Color(0xFF242424),
  });

  static Color get white => _white;

  static Color get secondry => _secondary;

  static MaterialColor get mainColorLight => _mainColorLight;

  static MaterialColor get black => _black;

  static Color get yellow => _starColor;

  static Color get red => _red;

  static Color get warningColor => _warningColor;

  static Color get gray => _gray;

  static Color get transparent => Colors.transparent;

  static Color get scaffoldBg => _scaffoldBg;
}
