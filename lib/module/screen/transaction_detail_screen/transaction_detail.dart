import 'package:flutter/material.dart';
import 'package:money_transfer_ui/core/constant/colors.dart';
import 'package:money_transfer_ui/core/constant/string.dart';
import 'package:money_transfer_ui/core/constant/users_details.dart';
import 'package:money_transfer_ui/module/widget/common_keyboard.dart';
import 'package:money_transfer_ui/module/widget/common_text.dart';
import 'package:money_transfer_ui/module/widget/common_user_profile_image.dart';

class TransactionDetail extends StatelessWidget {
  const TransactionDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.backGround,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            child: Column(
              children: [
                CommonUserProfilePhoto(
                  imagePath: CommonUserDetails.user1,
                  radius: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CommonText(
                    title: CommonUserDetails.name1,
                    color: CommonColors.grey,
                    fontWight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: CommonText(
                    title: CommonString.paymentAmount,
                    color: CommonColors.grey,
                    fontWight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: CommonText(
                    title: CommonString.countryCurrency,
                    color: CommonColors.grey,
                    fontWight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const CommonKeyBoard(payAndRequestButton: true),
        ],
      ),
    );
  }
}
