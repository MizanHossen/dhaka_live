import 'package:dhaka_live/helpers/constants/constants.dart';
import 'package:dhaka_live/view/login/login_screen.dart';
import 'package:dhaka_live/widgets/setting_item.dart';
import 'package:dhaka_live/widgets/social_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helpers/constants/images.dart';
import '../../helpers/user_service/user_service.dart';

// ignore: must_be_immutable
class Setting extends StatelessWidget {
  UserService userService = UserService();

  Setting({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black54,
        title: Image.asset(
          Images.logoWhite,
          //height: 50,
          width: size.width * 0.45,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_active,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: kMidPrimaryColor,
                  radius: 30.r,
                  child: const Icon(
                    Icons.person,
                    color: kPrimaryColor,
                  ),
                ),
                const SizedBox(width: 5),
                TextButton(
                    onPressed: () {
                      userService.saveBoolean(key: 'is-user', value: false);
                      Navigator.popUntil(context, (route) => route.isFirst);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ));
                    },
                    child: const Text("লগইন করুন",
                        style: TextStyle(color: kPrimaryColor))),
                const Icon(Icons.output, color: kPrimaryColor)
              ],
            ),
            const SizedBox(height: 20),
            const SettingItem(text: "সাইট ম্যাপ"),
            const SettingItem(text: "ভাষা"),
            const SettingItem(text: "অ্যাপ সেটিং"),
            const SettingItem(text: "গোপনীয়তা"),
            const SettingItem(text: "সর্তসমূহ"),
            const SettingItem(text: "যোগাযোগ"),
            const SettingItem(text: "আমাদের সম্পর্কে"),
            const SizedBox(height: 20),
            const Row(
              children: [
                SocialIcon(imageName: Images.facebookIcon),
                SizedBox(width: 8),
                SocialIcon(imageName: Images.telegramIcon),
                SizedBox(width: 8),
                SocialIcon(imageName: Images.twitterIcon),
                SizedBox(width: 8),
                SocialIcon(imageName: Images.linkedinIcon),
                SizedBox(width: 8),
                SocialIcon(imageName: Images.telegramIcon),
              ],
            )
          ],
        ),
      ),
    );
  }
}
