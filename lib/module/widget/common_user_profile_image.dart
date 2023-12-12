import 'package:flutter/material.dart';

class CommonUserProfilePhoto extends StatelessWidget {
  const CommonUserProfilePhoto({
    super.key,
    required this.imagePath,
    required this.radius,
    this.topPadding,
    this.bottomPadding,
    this.leftPadding,
    this.rightPadding,
  });

  final String imagePath;
  final double radius;
  final double? topPadding;
  final double? bottomPadding;
  final double? leftPadding;
  final double? rightPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: topPadding ?? 0,
        bottom: bottomPadding ?? 0,
        left: leftPadding ?? 0,
        right: rightPadding ?? 0,
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }
}
