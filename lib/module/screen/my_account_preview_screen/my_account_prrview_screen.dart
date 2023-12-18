import 'package:flutter/material.dart';
import 'package:money_transfer_ui/core/constant/colors.dart';
import 'package:money_transfer_ui/core/constant/icons.dart';
import 'package:money_transfer_ui/core/constant/string.dart';
import 'package:money_transfer_ui/module/widget/common_text.dart';
import 'package:money_transfer_ui/module/widget/common_transactions_history.dart';

import '../../../core/constant/users_details.dart';
import '../../widget/common_user_profile_image.dart';

class MyAccountPreview extends StatelessWidget {
  const MyAccountPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.backGround,
      appBar: AppBar(
        backgroundColor: CommonColors.transparent,
        elevation: 0,
        centerTitle: false,
      iconTheme: IconThemeData(color: CommonColors.blue),
        actions: [
          CommonUserProfilePhoto(
            imagePath: CommonUserDetails.user3,
            radius: 25,
            rightPadding: 25,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonText(
            title: CommonString.myAccount,
            fontSize: 30,
            fontWight: FontWeight.bold,
            color: CommonColors.grey,
            leftPadding: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: CommonColors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonText(
                            title: CommonString.currentBalance,
                            color: CommonColors.liteGrey,
                            fontSize: 15,
                            fontWight: FontWeight.bold,
                          ),
                          CommonText(
                            title: CommonString.percentageOfAddedAmount,
                            fontSize: 15,
                            fontWight: FontWeight.bold,
                            color: CommonColors.darkGreen,
                          ),
                          CommonText(
                            title: CommonString.myTotalBalance,
                            color: CommonColors.grey,
                            fontSize: 30,
                            fontWight: FontWeight.bold,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: CommonCardAndTransitionHistoryCard(
              myCard: CommonString.card,
              cardType1: CommonString.myPageWorkCard,
              openCardIcon1: CommonIcon.openCard,
              cardType2: CommonString.myPageTravelCard,
              openCardIcon2: CommonIcon.openCard,
            ),
          )
        ],
      ),
    );
  }
}
