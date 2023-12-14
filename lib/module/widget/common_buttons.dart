import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_transfer_ui/module/widget/common_text.dart';
import '../../core/constant/colors.dart';

class CommonElevatedButton extends StatelessWidget {
  const CommonElevatedButton({
    super.key,
    required this.buttonName,
    this.leftPadding,
    this.rightPadding,
    required this.onPresses,
  });
  final String buttonName;
  final double? leftPadding;
  final double? rightPadding;
  final void Function()? onPresses;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(CommonColors.blue),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
      onPressed: onPresses,
      child: CommonText(
        title: buttonName,
        fontSize: 15,
        fontWight: FontWeight.bold,
        topPadding: 13,
        bottomPadding: 13,
        leftPadding: leftPadding ?? 0,
        rightPadding: rightPadding ?? 0,
      ),
    );
  }
}

class CommonOutlinedButton extends StatelessWidget {
  const CommonOutlinedButton({
    super.key,
    required this.buttonName,
    required this.onPressed,
  });
  final String buttonName;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        side: MaterialStateProperty.all(
          BorderSide(color: CommonColors.blue),
        ),
      ),
      onPressed: onPressed,
      child: CommonText(
        title: buttonName,
        color: CommonColors.blue,
        fontSize: 15,
        fontWight: FontWeight.bold,
        topPadding: 13,
        bottomPadding: 13,
      ),
    );
  }
}
