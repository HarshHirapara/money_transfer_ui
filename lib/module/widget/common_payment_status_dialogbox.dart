import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    this.leftPadding,
    this.rightPadding,
  });
  final Icon statusIcon;
  final String message;
  final String mainButtonName;
  final double? leftPadding;
  final double? rightPadding;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ScreenUtilInit(
          child: Container(
            height: 0.4.sh,
            width: 0.8.sw,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(40),
              ),
              color: CommonColors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    statusIcon.icon,
                    size: 150,
                    color: CommonColors.red,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.sp),
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
                      CommonOutlinedButton(buttonName: CommonString.buttonBack),
                      CommonElevatedButton(
                        buttonName: mainButtonName,
                        leftPadding: leftPadding,
                        rightPadding: rightPadding,
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
