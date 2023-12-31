import 'package:dhaka_live/controllers/login_controller.dart';
import 'package:dhaka_live/helpers/constants/constants.dart';
import 'package:dhaka_live/helpers/constants/images.dart';
import 'package:dhaka_live/helpers/routes/custom_routes.dart';
import 'package:dhaka_live/helpers/size_config/size_config.dart';
import 'package:dhaka_live/view/signup/signup_screen.dart';
import 'package:dhaka_live/widgets/custom_button.dart';
import 'package:dhaka_live/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: kdefaultPadding),
        child: Column(
          mainAxisAlignment: mainCenter,
          children: [
            const Spacer(),
            Image.asset(
              Images.logoBlack,
              width: MediaQuery.sizeOf(context).width / 1.5,
            ),
            gapHeight(size: 40),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("মেইল", style: kTitleTextstyle),
            ),
            gapHeight(size: 5),
            CustomTextField(
              hintText: "*****@gmail.com",
              controller: loginController.gmailController,
              isSuffixIcon: true,
            ),
            gapHeight(size: 10),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("পাসওয়ার্ড", style: kTitleTextstyle),
            ),
            gapHeight(size: 5),
            CustomTextField(
              obscureText: true,
              hintText: "*************",
              controller: loginController.passController,
              isSuffixIcon: true,
            ),
            gapHeight(size: 30),
            CustomButton(
              text: "লগইন করুন",
              color: kPrimaryColor,
              ontap: () {
                loginController.loginUser(context);
              },
              textColor: kWhiteTextColor,
            ),
            gapHeight(size: 20),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "পাসওয়ার্ড ভুলে গেছেন ? ",
                    style: kTitleTextstyle,
                  ),
                  TextSpan(
                    text: "নতুন পাসওয়ার্ড দিন",
                    style: kTitleTextstyle.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, SlideLeftRoute(page: const SignUpScreen()));
              },
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "অ্যাকাউন্ট না থাকলে ? ",
                      style: kTitleTextstyle,
                    ),
                    TextSpan(
                      text: "নতুন অ্যাকাউন্ট করুন",
                      style: kTitleTextstyle.copyWith(color: kPrimaryColor),
                    )
                  ],
                ),
              ),
            ),
            gapHeight(size: 20),
          ],
        ),
      ),
    );
  }
}
