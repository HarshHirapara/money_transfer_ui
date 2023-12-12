import 'package:flutter/material.dart';
import 'package:money_transfer_ui/module/widget/common_text.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({super.key, required this.buttonName});
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {}, child: CommonText(title: buttonName));
  }
}
