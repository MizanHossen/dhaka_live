import 'package:dhaka_live/helpers/constants/constants.dart';
import 'package:dhaka_live/helpers/constants/images.dart';
import 'package:dhaka_live/helpers/size_config/size_config.dart';
import 'package:dhaka_live/widgets/custom_button.dart';
import 'package:dhaka_live/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: kdefaultPadding),
        child: Column(
          mainAxisAlignment: mainCenter,
          children: [
            Image.asset(
              Images.logoBlack,
              width: MediaQuery.sizeOf(context).width / 1.5,
            ),
            gapHeight(size: 40),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("মোবাইল নম্বর", style: kTitleTextstyle),
            ),
            gapHeight(size: 5),
            const CustomTextField(
              hintText: "+৮৮ (০১৫) ০০০০-০০০০",
              controller: null,
              isSuffixIcon: true,
            ),
            gapHeight(size: 10),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("পাসওয়ার্ড", style: kTitleTextstyle),
            ),
            gapHeight(size: 5),
            const CustomTextField(
              obscureText: true,
              hintText: "*************",
              controller: null,
              isSuffixIcon: true,
            ),
            gapHeight(size: 30),
            CustomButton(
              text: "লগইন করুন",
              color: kPrimaryColor,
              ontap: () {},
              textColor: kWhiteTextColor,
            )
          ],
        ),
      ),
    );
  }
}
