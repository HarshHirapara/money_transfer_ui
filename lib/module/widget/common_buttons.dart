import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    required this.buttonType,
  });
  final String buttonType;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, child: Text(buttonType));
  }
}
