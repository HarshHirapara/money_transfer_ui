import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText({
    super.key,
    required this.title,
    this.color,
    this.fontSize,
    this.fontWight,
    this.topPadding,
    this.bottomPadding,
    this.leftPadding,
    this.rightPadding,
    this.textAlign,
  });
  final String title;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWight;
  final double? topPadding;
  final double? bottomPadding;
  final double? leftPadding;
  final double? rightPadding;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: topPadding ?? 0,
        bottom: bottomPadding ?? 0,
        left: leftPadding ?? 0,
        right: rightPadding ?? 0,
      ),
      child: Text(
        title,
        textAlign: textAlign,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWight,
        ),
      ),
    );
  }
}
