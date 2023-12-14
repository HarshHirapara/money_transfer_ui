import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_transfer_ui/core/constant/colors.dart';
import 'package:money_transfer_ui/core/constant/string.dart';
import 'package:money_transfer_ui/module/widget/common_buttons.dart';
import 'package:money_transfer_ui/module/widget/common_text.dart';

class CommonPaymentStatusDialogBox extends StatelessWidget {
  const CommonPaymentStatusDialogBox({
    super.key,
    required this.statusIcon,
    required this.message,
    required this.mainButtonName,
    required this.iconColors,
    required this.backToHome,
    this.leftPadding,
    this.rightPadding,
  });
  final Icon statusIcon;
  final String message;
  final String mainButtonName;
  final Color iconColors;
  final void Function() backToHome;
  final double? leftPadding;
  final double? rightPadding;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(40),
              ),
              color: CommonColors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      statusIcon.icon,
                      size: 150,
                      color: iconColors,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Material(
                      color: CommonColors.white,
                      child: CommonText(
                        title: message,
                        color: CommonColors.grey,
                        fontSize: 25,
                        fontWight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CommonOutlinedButton(
                        buttonName: CommonString.buttonBack,
                        onPressed: backToHome,
                      ),
                      CommonElevatedButton(
                        buttonName: mainButtonName,
                        leftPadding: leftPadding,
                        rightPadding: rightPadding,
                        onPresses: () => Get.back(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
