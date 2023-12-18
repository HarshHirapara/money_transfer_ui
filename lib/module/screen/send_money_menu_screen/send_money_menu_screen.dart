import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_transfer_ui/core/constant/colors.dart';
import 'package:money_transfer_ui/core/constant/icons.dart';
import 'package:money_transfer_ui/core/constant/string.dart';
import 'package:money_transfer_ui/core/getx_property/getx_property.dart';
import 'package:money_transfer_ui/module/screen/send_money_contect_screen.dart/send_money_contect_screen.dart';
import 'package:money_transfer_ui/module/screen/send_money_to_bank_account_screen/send_money_to_bank_account_screen.dart';
import 'package:money_transfer_ui/module/widget/common_payment_status_dialogbox.dart';
import 'package:money_transfer_ui/module/widget/common_send_money_type_option.dart';
import 'package:money_transfer_ui/module/widget/common_text.dart';

import '../send_money_to_phone_number_screen/send_money_to_phone_number.dart';

class SendMoneyMenu extends StatelessWidget {
  const SendMoneyMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.backGround,
      body: Center(
        child: Obx(
          () => Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonText(
                  title: CommonString.sendMoneyScreenTitle,
                  fontSize: 40,
                  fontWight: FontWeight.bold,
                  bottomPadding: 60,
                ),
                GestureDetector(
                  onTap: () {
                    GetXProperty.isContactSelected.value = true;
                    GetXProperty.isPhoneNumberSelected.value = false;
                    GetXProperty.isBankAccountSelected.value = false;
                    Get.to(() => const SendMoneyContactScreen());
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: CommonSendMoneyTypeOption(
                      icon: CommonIcon.people,
                      title: CommonString.sendToContact,
                      isSelected: GetXProperty.isContactSelected.value,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    GetXProperty.isPhoneNumberSelected.value = true;
                    GetXProperty.isContactSelected.value = false;
                    GetXProperty.isBankAccountSelected.value = false;
                    Get.to(() => const SendMoneyToPhoneNumber());
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: CommonSendMoneyTypeOption(
                      icon: CommonIcon.call,
                      title: CommonString.sendToPhoneNumber,
                      isSelected: GetXProperty.isPhoneNumberSelected.value,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    GetXProperty.isBankAccountSelected.value = true;
                    GetXProperty.isContactSelected.value = false;
                    GetXProperty.isPhoneNumberSelected.value = false;
                    Get.to(() => const SendMoneyToBankAccount());
                  },
                  child: CommonSendMoneyTypeOption(
                    icon: CommonIcon.bank,
                    title: CommonString.sendToBankAccount,
                    isSelected: GetXProperty.isBankAccountSelected.value,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
