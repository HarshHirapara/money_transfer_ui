import 'package:flutter/material.dart';
import 'package:money_transfer_ui/core/constant/colors.dart';
import 'package:money_transfer_ui/core/constant/icons.dart';
import 'package:money_transfer_ui/module/widget/common_text.dart';

class CommonSendMoneyTypeOption extends StatelessWidget {
  const CommonSendMoneyTypeOption({
    super.key,
    required this.icon,
    required this.title,
    required this.isSelected,
  });
  final Icon icon;
  final bool isSelected;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CommonColors.white,
        border: Border.all(
          width: 1.5,
          color: isSelected ? CommonColors.darkGreen : CommonColors.offWhite,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: ListTile(
          leading: Icon(
            icon.icon,
            color: isSelected ? CommonColors.grey : CommonColors.liteGrey,
            size: 30,
          ),
          title: CommonText(
            title: title,
            color: isSelected ? CommonColors.grey : CommonColors.liteGrey,
            fontSize: 19,
          ),
          trailing: isSelected
              ? Icon(
                  CommonIcon.radioButtonOn.icon,
                  color: CommonColors.darkGreen,
                )
              : Icon(
                  CommonIcon.radioButtonOff.icon,
                  color: CommonColors.offWhite,
                ),
        ),
      ),
    );
  }
}
