import 'package:dhaka_live/controllers/signup_controller.dart';
import 'package:dhaka_live/helpers/routes/custom_routes.dart';
import 'package:dhaka_live/view/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helpers/constants/constants.dart';
import '../../helpers/constants/images.dart';
import '../../helpers/size_config/size_config.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SignUpController signUpController = Get.put(SignUpController());
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
              child: Text("আপনার নাম ", style: kTitleTextstyle),
            ),
            gapHeight(size: 5),
            CustomTextField(
              hintText: "মোঃ কৌশিক আহমেদ ",
              controller: signUpController.nameController,
              isSuffixIcon: true,
            ),
            gapHeight(size: 10),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("মেইল", style: kTitleTextstyle),
            ),
            gapHeight(size: 5),
            CustomTextField(
              hintText: "****@gmail.com",
              controller: signUpController.gmailController,
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
              controller: signUpController.passController,
              isSuffixIcon: true,
            ),
            gapHeight(size: 30),
            Obx(
              // ignore: unrelated_type_equality_checks
              () => signUpController.isLoading == true
                  ? const CircularProgressIndicator(
                      color: kPrimaryColor,
                    )
                  : CustomButton(
                      text: "অ্যাকাউন্ট করুন",
                      color: kPrimaryColor,
                      ontap: () {
                        signUpController.signUpUser(context);
                      },
                      textColor: kWhiteTextColor,
                    ),
            ),
            gapHeight(size: 20),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, SlideRightRoute(page: const LoginScreen()));
              },
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "অ্যাকাউন্ট আছে ? ",
                      style: kTitleTextstyle,
                    ),
                    TextSpan(
                      text: "লগইন করুন",
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
