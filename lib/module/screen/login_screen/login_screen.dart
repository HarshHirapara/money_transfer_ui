import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:money_transfer_ui/core/constant/colors.dart';
import 'package:money_transfer_ui/core/constant/icons.dart';
import 'package:money_transfer_ui/core/constant/images.dart';
import 'package:money_transfer_ui/core/constant/string.dart';
import 'package:money_transfer_ui/module/screen/home_screen/home_screen.dart';
import 'package:money_transfer_ui/module/widget/common_keybord.dart';
import 'package:money_transfer_ui/module/widget/common_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.backGround,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              child: Image.asset(CommonImages.loginScreenImage),
            ),
            CommonText(
              title: CommonString.loginScreenTitle,
              fontSize: 30,
              fontWight: FontWeight.bold,
              color: CommonColors.grey,
              topPadding: 10,
              bottomPadding: 5,
            ),
            CommonText(
              title: CommonString.loginScreenSubTitle,
              fontSize: 13.5,
              fontWight: FontWeight.bold,
              color: CommonColors.liteGrey,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(CommonIcon.outLineCircle.icon,
                      color: CommonColors.green),
                  Icon(CommonIcon.outLineCircle.icon,
                      color: CommonColors.green),
                  Icon(CommonIcon.outLineCircle.icon,
                      color: CommonColors.green),
                  Icon(CommonIcon.outLineCircle.icon, color: CommonColors.green)
                ],
              ),
            ),
            const KeyBoard()
          ],
        ),
      ),
    );
  }
}
