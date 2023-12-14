import 'package:flutter/material.dart';
import 'package:money_transfer_ui/core/constant/colors.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField(
      {super.key, required this.hintText, required this.icon});
  final String hintText;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CommonColors.backGround,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: Icon(
              icon.icon,
              color: CommonColors.grey,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
    // Icon(CommonIcon.search.icon));
  }
}
