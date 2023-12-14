import 'package:flutter/material.dart';
import 'package:money_transfer_ui/core/constant/colors.dart';

class CommonTextFieldWithIcon extends StatelessWidget {
  const CommonTextFieldWithIcon(
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
            helperStyle: TextStyle(
              color: CommonColors.grey,
              fontWeight: FontWeight.bold,
            ),
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

class CommonTextFieldWithoutIcon extends StatelessWidget {
  const CommonTextFieldWithoutIcon({super.key, required this.hintText});
  final String hintText;

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
            hintStyle: TextStyle(
                color: CommonColors.grey, fontWeight: FontWeight.bold),
            border: InputBorder.none,
          ),
        ),
      ),
    );
    // Icon(CommonIcon.search.icon));
  }
}
