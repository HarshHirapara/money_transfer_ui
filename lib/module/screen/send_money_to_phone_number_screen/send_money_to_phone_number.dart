import 'package:flutter/material.dart';
import 'package:money_transfer_ui/core/constant/colors.dart';
import 'package:money_transfer_ui/core/constant/string.dart';
import 'package:money_transfer_ui/module/widget/common_buttons.dart';
import 'package:money_transfer_ui/module/widget/common_text.dart';
import 'package:money_transfer_ui/module/widget/common_text_field.dart';

class SendMoneyToPhoneNumber extends StatelessWidget {
  const SendMoneyToPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.backGround,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: CommonColors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      CommonText(
                        title: CommonString.enterPhoneNumber,
                        fontSize: 25,
                        color: CommonColors.grey,
                        fontWight: FontWeight.bold,
                        bottomPadding: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CommonTextFieldWithoutIcon(
                                    hintText:
                                        CommonString.countryPhoneNumberCode),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: CommonTextFieldWithoutIcon(
                                hintText: CommonString.enterPhoneNumberHint,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CommonElevatedButton(
                              buttonName: CommonString.proceed,
                              onPresses: () {},
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
