import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_transfer_ui/core/constant/colors.dart';
import 'package:money_transfer_ui/core/constant/icons.dart';
import 'package:money_transfer_ui/core/constant/string.dart';
import 'package:money_transfer_ui/core/constant/users_details.dart';
import 'package:money_transfer_ui/module/screen/send_money_to_phone_number_screen/send_money_to_phone_number.dart';
import 'package:money_transfer_ui/module/widget/common_buttons.dart';
import 'package:money_transfer_ui/module/widget/common_text.dart';
import 'package:money_transfer_ui/module/widget/common_text_field.dart';
import 'package:money_transfer_ui/module/widget/common_user_profile_image.dart';

import '../transaction_detail_screen/transaction_detail.dart';

class SendMoneyContactScreen extends StatelessWidget {
  const SendMoneyContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: CommonColors.backGround,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: screenHight / 1.2,
            decoration: BoxDecoration(
              color: CommonColors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonText(
                            title: CommonString.contacts,
                            fontSize: 25,
                            fontWight: FontWeight.bold,
                            color: CommonColors.grey,
                          ),
                          CommonElevatedButton(
                            buttonName: CommonString.done,
                            leftPadding: 5,
                            rightPadding: 5,
                            onPresses: () =>
                                Get.to(() => const TransactionDetail()),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: CommonTextFieldWithIcon(
                        hintText: CommonString.namePhoneNumber,
                        icon: CommonIcon.search,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        child: Column(
                          children: [
                            CommonContacts(
                              image: CommonUserDetails.userList[0]['photo'],
                              name: CommonUserDetails.userList[0]['name'],
                              userNumber: CommonUserDetails.userList[0]
                                  ['phoneNumber'],
                              checkBox: CommonIcon.checkBox,
                            ),
                            CommonContacts(
                              image: CommonUserDetails.userList[1]['photo'],
                              name: CommonUserDetails.userList[1]['name'],
                              userNumber: CommonUserDetails.userList[1]
                                  ['phoneNumber'],
                              checkBox: CommonIcon.checkBox,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                              title: CommonString.e,
                              fontSize: 35,
                              fontWight: FontWeight.bold,
                              leftPadding: 15,
                            ),
                            CommonContacts(
                              image: CommonUserDetails.userList[2]['photo'],
                              name: CommonUserDetails.userList[2]['name'],
                              userNumber: CommonUserDetails.userList[2]
                                  ['phoneNumber'],
                              checkBox: CommonIcon.box,
                            ),
                            CommonContacts(
                              image: CommonUserDetails.userList[3]['photo'],
                              name: CommonUserDetails.userList[3]['name'],
                              userNumber: CommonUserDetails.userList[3]
                                  ['phoneNumber'],
                              checkBox: CommonIcon.box,
                            ),
                            CommonContacts(
                              image: CommonUserDetails.userList[4]['photo'],
                              name: CommonUserDetails.userList[4]['name'],
                              userNumber: CommonUserDetails.userList[4]
                                  ['phoneNumber'],
                              checkBox: CommonIcon.box,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                              title: CommonString.f,
                              fontSize: 35,
                              fontWight: FontWeight.bold,
                              leftPadding: 15,
                            ),
                            CommonContacts(
                              image: CommonUserDetails.userList[5]['photo'],
                              name: CommonUserDetails.userList[5]['name'],
                              userNumber: CommonUserDetails.userList[5]
                                  ['phoneNumber'],
                              checkBox: CommonIcon.box,
                            ),
                          ],
                        ),
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

class CommonContacts extends StatelessWidget {
  const CommonContacts({
    super.key,
    required this.image,
    required this.name,
    required this.checkBox,
    required this.userNumber,
  });
  final String image;
  final String name;
  final Icon checkBox;
  final String userNumber;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: CommonText(
        title: name,
        fontWight: FontWeight.w700,
        color: CommonColors.grey,
      ),
      subtitle: CommonText(
        title: userNumber,
        fontWight: FontWeight.bold,
      ),
      leading: CommonUserProfilePhoto(
        imagePath: image,
        radius: 25,
      ),
      trailing: Icon(
        checkBox.icon,
        size: 30,
        color: CommonColors.darkGreen,
      ),
    );
  }
}
