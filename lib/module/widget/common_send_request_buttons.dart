import 'package:flutter/material.dart';
import 'package:money_transfer_ui/core/constant/colors.dart';
import 'package:money_transfer_ui/module/widget/common_text.dart';

class CommonSendRequestButton extends StatelessWidget {
  const CommonSendRequestButton({
    super.key,
    required this.icon,
    required this.transactionType,
    required this.iconSize,
    required this.iconColor,
    required this.fontSize,
    required this.fontWeight,
    required this.fontColors,
    this.inSaidPaddingTop,
    this.inSaidPaddingBottom,
    this.inSaidPaddingLeft,
    this.inSaidPaddingRight,
  });
  final Icon icon;
  final String transactionType;
  final double iconSize;
  final Color iconColor;
  final double fontSize;
  final FontWeight fontWeight;
  final Color fontColors;
  final double? inSaidPaddingTop;
  final double? inSaidPaddingBottom;
  final double? inSaidPaddingLeft;
  final double? inSaidPaddingRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
        color: CommonColors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: inSaidPaddingTop ?? 0,
          bottom: inSaidPaddingBottom ?? 0,
          left: inSaidPaddingLeft ?? 0,
          right: inSaidPaddingRight ?? 0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              icon.icon,
              size: iconSize,
              color: iconColor,
            ),
            const SizedBox(
              height: 10,
            ),
            CommonText(
              title: transactionType,
              color: fontColors,
              fontSize: fontSize,
              fontWight: fontWeight,
            ),
          ],
        ),
      ),
    );
  }
}
