import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:money_transfer_ui/core/constant/colors.dart';
import 'package:money_transfer_ui/core/constant/string.dart';
import 'package:money_transfer_ui/module/screen/home_screen/home_screen.dart';
import 'package:money_transfer_ui/module/screen/payment_review_screen/payment_review_screen.dart';
import 'package:money_transfer_ui/module/widget/common_buttons.dart';
import 'package:money_transfer_ui/module/widget/common_text.dart';

class CommonKeyBoard extends StatelessWidget {
  const CommonKeyBoard({super.key, required this.payAndRequestButton});
  final bool payAndRequestButton;

  @override
  Widget build(BuildContext context) {
    List<String> keyboardKeys = [
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '0',
      '<',
      '   '
    ];
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        color: CommonColors.white,
      ),
      height: payAndRequestButton ? screenHeight / 2 : screenHeight / 2.2,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 30, bottom: 35, left: 65, right: 65),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            KeyBoardRows(
              keyOne: keyboardKeys[0],
              keyTwo: keyboardKeys[1],
              keyThree: keyboardKeys[2],
            ),
            KeyBoardRows(
              keyOne: keyboardKeys[3],
              keyTwo: keyboardKeys[4],
              keyThree: keyboardKeys[5],
            ),
            KeyBoardRows(
              keyOne: keyboardKeys[6],
              keyTwo: keyboardKeys[7],
              keyThree: keyboardKeys[8],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonText(title: keyboardKeys[11]),
                CommonText(
                  title: keyboardKeys[9],
                  fontSize: 23,
                  color: CommonColors.blue,
                  fontWight: FontWeight.bold,
                ),
                InkWell(
                  onTap: () => Get.to(() => const HomeScreen()),
                  child: CommonText(
                    title: keyboardKeys[10],
                    fontSize: 23,
                    color: CommonColors.blue,
                    fontWight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            if (payAndRequestButton)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CommonOutlinedButton(
                      buttonName: CommonString.request,
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: CommonElevatedButton(
                      buttonName: CommonString.pay,
                      onPresses: () => Get.to(
                        () => const PaymentReview(),
                      ),
                    ),
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}

class KeyBoardRows extends StatelessWidget {
  const KeyBoardRows({
    super.key,
    required this.keyOne,
    required this.keyTwo,
    required this.keyThree,
  });
  final String keyOne;
  final String keyTwo;
  final String keyThree;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonText(
          title: keyOne,
          fontSize: 23,
          color: CommonColors.blue,
          fontWight: FontWeight.bold,
        ),
        CommonText(
          title: keyTwo,
          fontSize: 23,
          color: CommonColors.blue,
          fontWight: FontWeight.bold,
        ),
        CommonText(
          title: keyThree,
          fontSize: 23,
          color: CommonColors.blue,
          fontWight: FontWeight.bold,
        ),
      ],
    );
  }
}
