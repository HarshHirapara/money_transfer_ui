import 'package:flutter/material.dart';

class CommonColors {
  static Color white = Colors.white;
  static Color backGround = HexColor('#eff0f4');
  static Color blue = HexColor('#5886f3');
  static Color grey = HexColor('#172c68');
  static Color liteGrey = HexColor('#64739f');
  static Color green = HexColor('#5ae2b3');
  // Color abcd =Colors.
}

class HexColor extends Color {
  static int _getColor(String hex) {
    String formattedHex = "FF${hex.toUpperCase().replaceAll("#", "")}";
    return int.parse(formattedHex, radix: 16);
  }

  HexColor(final String hex) : super(_getColor(hex));
}
