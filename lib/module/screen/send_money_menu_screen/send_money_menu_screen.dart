import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_transfer_ui/core/constant/colors.dart';
import 'package:money_transfer_ui/core/constant/icons.dart';
import 'package:money_transfer_ui/core/constant/string.dart';
import 'package:money_transfer_ui/core/getx_property/getx_property.dart';
import 'package:money_transfer_ui/module/widget/common_payment_status_dialogbox.dart';
import 'package:money_transfer_ui/module/widget/common_send_money_type_option.dart';
import 'package:money_transfer_ui/module/widget/common_text.dart';

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
                GestureDetector(
                  onTap: () => Get.back(),
                  child: CommonText(
                    title: CommonString.sendMoneyScreenTitle,
                    fontSize: 40,
                    fontWight: FontWeight.bold,
                    bottomPadding: 60,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    GetXProperty.isContactSelected.value = true;
                    GetXProperty.isPhoneNumberSelected.value = false;
                    GetXProperty.isBankAccountSelected.value = false;
                    // Get.to(()=>);
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
                    showDialog(
                      context: context,
                      builder: (context) => CommonPaymentStatusDialogBox(
                        statusIcon: CommonIcon.paymentFail,
                        message: CommonString.paymentRequestFail,
                        mainButtonName: CommonString.buttonTryAgain,
                        iconColors: CommonColors.red,
                      ),
                    );
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
                    showDialog(
                      context: context,
                      builder: (context) => CommonPaymentStatusDialogBox(
                        statusIcon: CommonIcon.paymentFail,
                        message: CommonString.paymentRequestFail,
                        mainButtonName: CommonString.buttonTryAgain,
                        iconColors: CommonColors.red,
                      ),
                    );
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
