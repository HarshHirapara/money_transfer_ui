import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:money_transfer_ui/core/constant/colors.dart';
import 'package:money_transfer_ui/core/constant/icons.dart';
import 'package:money_transfer_ui/core/constant/string.dart';
import 'package:money_transfer_ui/core/constant/users_details.dart';
import 'package:money_transfer_ui/module/widget/common_buttons.dart';
import 'package:money_transfer_ui/module/widget/common_payment_status_dialogbox.dart';
import 'package:money_transfer_ui/module/widget/common_text.dart';
import 'package:money_transfer_ui/module/widget/common_text_field.dart';
import 'package:money_transfer_ui/module/widget/common_user_profile_image.dart';

class PaymentReview extends StatelessWidget {
  const PaymentReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.backGround,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              decoration: BoxDecoration(
                color: CommonColors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 40,
                  bottom: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      title: CommonString.amount,
                    ),
                    CommonText(
                      title: CommonString.paymentAmount,
                      color: CommonColors.grey,
                      fontSize: 45,
                      fontWight: FontWeight.bold,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25, bottom: 25),
                      child: Container(
                        decoration: BoxDecoration(
                          color: CommonColors.backGround,
                          border: Border.all(
                            width: 1.5,
                            color: CommonColors.darkGreen,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              CommonUserProfilePhoto(
                                imagePath: CommonUserDetails.user1,
                                radius: 35,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonText(title: CommonString.to),
                                    CommonText(
                                      title: CommonUserDetails.name1,
                                      color: CommonColors.grey,
                                      fontSize: 20,
                                      fontWight: FontWeight.bold,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    CommonTextFieldWithIcon(
                      hintText: CommonString.forLunch,
                      icon: CommonIcon.edit,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Expanded(
                            child: CommonElevatedButton(
                              buttonName: CommonString.confirm,
                              onPresses: () => showDialog(
                                context: context,
                                builder: (context) =>
                                    CommonPaymentStatusDialogBox(
                                  statusIcon: CommonIcon.paymentSuccess,
                                  message: CommonString.paymentSuccessful,
                                  mainButtonName: CommonString.buttonNewPayment,
                                  iconColors: CommonColors.green,
                                  backToHome: () {},
                                  nextPage: () => Get.to(() => null),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
