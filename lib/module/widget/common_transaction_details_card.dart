import 'package:flutter/material.dart';
import 'package:money_transfer_ui/module/widget/common_user_profile_image.dart';

import '../../core/constant/colors.dart';
import 'common_text.dart';

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
      leading: CommonUserProfilePhoto(imagePath: image, radius: 23),
      trailing: CommonText(
        title: amount,
        fontWight: FontWeight.w600,
        color: CommonColors.grey,
      ),
    );
  }
}
