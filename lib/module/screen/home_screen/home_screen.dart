import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_transfer_ui/core/constant/colors.dart';
import 'package:money_transfer_ui/core/constant/icons.dart';
import 'package:money_transfer_ui/core/constant/string.dart';
import 'package:money_transfer_ui/core/constant/users_details.dart';
import 'package:money_transfer_ui/module/screen/send_money_menu_screen/send_money_menu_screen.dart';
import 'package:money_transfer_ui/module/widget/common_transactions_history.dart';
import 'package:money_transfer_ui/module/widget/common_payment_status_dialogbox.dart';
import 'package:money_transfer_ui/module/widget/common_send_request_buttons.dart';
import 'package:money_transfer_ui/module/widget/common_text.dart';
import 'package:money_transfer_ui/module/widget/common_user_profile_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.backGround,
      appBar: AppBar(
        backgroundColor: CommonColors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: CommonText(
          title: CommonString.homePageAppBarTitle,
          color: CommonColors.grey,
          leftPadding: 9,
        ),
        actions: [
          CommonUserProfilePhoto(
            imagePath: CommonUserDetails.user3,
            radius: 25,
            rightPadding: 25,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => Get.to(() => const SendMoneyMenu()),
                    child: CommonSendRequestButton(
                      icon: CommonIcon.upwardArrow,
                      iconSize: 65,
                      iconColor: CommonColors.blue,
                      transactionType: CommonString.buttonSendMoney,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontColors: CommonColors.blue,
                      inSaidPaddingLeft: 30,
                      inSaidPaddingRight: 30,
                      inSaidPaddingTop: 20,
                      inSaidPaddingBottom: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => showDialog(
                      context: context,
                      builder: (context) => CommonPaymentStatusDialogBox(
                        statusIcon: CommonIcon.paymentFail,
                        message: CommonString.paymentRequestFail,
                        mainButtonName: CommonString.buttonTryAgain,
                        iconColors: CommonColors.red,
                        backToHome: () => Get.back(),
                        leftPadding: 15,
                        rightPadding: 15,
                      ),
                    ),
                    child: CommonSendRequestButton(
                      icon: CommonIcon.downwardArrow,
                      iconSize: 65,
                      iconColor: CommonColors.blue,
                      transactionType: CommonString.buttonRequestMoney,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontColors: CommonColors.blue,
                      inSaidPaddingLeft: 20,
                      inSaidPaddingRight: 20,
                      inSaidPaddingTop: 20,
                      inSaidPaddingBottom: 20,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CommonCardAndTransitionHistoryCard(
                myCard: CommonString.myCard,
                transaction: CommonString.transaction,
                cardType1: CommonString.workCard,
                cardType2: CommonString.travelCard,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
