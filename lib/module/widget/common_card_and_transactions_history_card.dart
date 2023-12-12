import 'package:flutter/material.dart';
import 'package:money_transfer_ui/core/constant/colors.dart';
import 'package:money_transfer_ui/module/widget/common_text.dart';

import '../../core/constant/icons.dart';
import '../../core/constant/string.dart';
import '../../core/constant/users_details.dart';

class CommonCardAndTransitionHistoryCard extends StatelessWidget {
  const CommonCardAndTransitionHistoryCard({
    super.key,
    required this.myCard,
    required this.transaction,
    required this.cardType1,
    required this.cardType2,
  });
  final String myCard;
  final String transaction;
  final String cardType1;
  final String cardType2;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight / 1.5,
      decoration: BoxDecoration(
        color: CommonColors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CommonText(
                title: myCard,
                fontSize: 18,
                fontWight: FontWeight.bold,
                color: CommonColors.grey,
              ),
            ),
            CommonCard(
              cardLogo: CommonIcon.workCard,
              cardType: cardType1,
            ),
            CommonCard(
              cardLogo: CommonIcon.travelCard,
              cardType: cardType2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText(
                    title: transaction,
                    fontSize: 17,
                    color: CommonColors.grey,
                    fontWight: FontWeight.bold,
                  ),
                  CommonText(
                    title: CommonString.lastTransaction,
                    color: CommonColors.darkGreen,
                    fontWight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                child: ListView.builder(
                  itemCount: CommonUserDetails.userList.length,
                  itemBuilder: (context, index) {
                    return CommonTransactionDetails(
                      image: CommonUserDetails.userList[index]['photo'],
                      name: CommonUserDetails.userList[index]['name'],
                      amount: CommonUserDetails.userList[index]['amount'],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CommonCard extends StatelessWidget {
  const CommonCard({super.key, required this.cardLogo, required this.cardType});
  final Icon cardLogo;
  final String cardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        decoration: BoxDecoration(
          color: CommonColors.backGround,
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.5),
          child: ListTile(
            leading: cardLogo,
            iconColor: CommonColors.grey,
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CommonText(
                title: cardType,
                fontSize: 17,
                fontWight: FontWeight.w700,
                color: CommonColors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CommonTransactionDetails extends StatelessWidget {
  const CommonTransactionDetails({
    super.key,
    required this.image,
    required this.name,
    required this.amount,
  });
  final String image;
  final String name;
  final String amount;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: CommonText(
        title: name,
        fontWight: FontWeight.w500,
        color: CommonColors.grey,
      ),
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      trailing: CommonText(
        title: amount,
        fontWight: FontWeight.w600,
        color: CommonColors.grey,
      ),
    );
  }
}
