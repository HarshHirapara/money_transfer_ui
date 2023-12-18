import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_transfer_ui/core/constant/icons.dart';
import 'package:money_transfer_ui/core/getx_property/getx_property.dart';
import '../../../core/constant/colors.dart';
import '../../../core/constant/string.dart';
import '../../widget/common_buttons.dart';
import '../../widget/common_text.dart';
import '../../widget/common_text_field.dart';
import '../transaction_detail_screen/transaction_detail.dart';

class SendMoneyToBankAccount extends StatelessWidget {
  const SendMoneyToBankAccount({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: CommonColors.backGround,
      appBar: AppBar(
        backgroundColor: CommonColors.transparent,
        elevation: 0,
        centerTitle: false,
  iconTheme: IconThemeData(color: CommonColors.blue),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              // height: screenHight / 1.5,
              decoration: BoxDecoration(
                color: CommonColors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: SingleChildScrollView(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CommonText(
                        title: CommonString.enterBankAccountDetails,
                        fontSize: 25,
                        color: CommonColors.grey,
                        fontWight: FontWeight.bold,
                        textAlign: TextAlign.center,
                        topPadding: 40,
                        bottomPadding: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: CommonTextFieldWithoutIcon(
                          hintText: CommonString.countryOfRecipientsBank,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: CommonColors.backGround,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 5,
                              bottom: 5,
                            ),
                            child: Obx(
                              () => DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  value: GetXProperty.dropdownValue.value,
                                  dropdownColor: CommonColors.backGround,
                                  icon: CommonIcon.dropDown,
                                  iconSize: 30,
                                  isExpanded: true,
                                  style: TextStyle(
                                    color: CommonColors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (String? value) {
                                    GetXProperty.dropdownValue.value = value!;
                                  },
                                  items: GetXProperty.dropDownItems
                                      .map<DropdownMenuItem<String>>(
                                    (String value) {
                                      return DropdownMenuItem(
                                        value: value,
                                        child: Text(value),
                                      );
                                    },
                                  ).toList(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: CommonTextFieldWithoutIcon(
                          hintText: CommonString.iban,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 20),
                              child: CommonElevatedButton(
                                buttonName: CommonString.proceed,
                                onPresses: () => Get.to(
                                  () => const TransactionDetail(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
