import 'package:flutter/material.dart';

class CommonColors {
  static Color transparent = Colors.transparent;
  static Color white = Colors.white;

  static Color backGround = HexColor('#eff0f5');
  static Color blue = HexColor('#5987f3');
  static Color grey = HexColor('#162d68');
  static Color liteGrey = HexColor('#64739f');
  static Color green = HexColor('#218d6b');
  static Color liteGreen = HexColor('#5ae2b3');
}

class HexColor extends Color {
  static int _getColor(String hex) {
    String formattedHex = "FF${hex.toUpperCase().replaceAll("#", "")}";
    return int.parse(formattedHex, radix: 16);
  }

  HexColor(final String hex) : super(_getColor(hex));
}
