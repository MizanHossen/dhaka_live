import 'package:dhaka_live/helpers/constants/constants.dart';
import 'package:dhaka_live/widgets/setting_item.dart';
import 'package:dhaka_live/widgets/social_icons.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black54,
          title: const Text(
            "Dhaka Live",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications, color: Colors.white))
          ]),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const CircleAvatar(
                radius: 27,
                backgroundImage: AssetImage("assets/images/person.jpg")),
            const SizedBox(width: 5),
            TextButton(
                onPressed: () {},
                child: const Text("লগইন করুন",
                    style: TextStyle(color: kPrimaryColor))),
            const Icon(Icons.output, color: kPrimaryColor)
          ]),
          const SizedBox(height: 20),
          const SettingItem(text: "সাইট ম্যাপ"),
          const SettingItem(text: "ভাষা"),
          const SettingItem(text: "অ্যাপ সেটিং"),
          const SettingItem(text: "গোপনীয়তা"),
          const SettingItem(text: "সর্তসমূহ"),
          const SettingItem(text: "যোগাযোগ"),
          const SettingItem(text: "আমাদের সম্পর্কে"),
          const SizedBox(height: 20),
          Row(children: const [
            SocialIcon(imageName: "facebook.png"),
            SizedBox(width: 8),
            SocialIcon(imageName: "telegram.png"),
            SizedBox(width: 8),
            SocialIcon(imageName: "twitter.png"),
            SizedBox(width: 8),
            SocialIcon(imageName: "linkedin.png"),
            SizedBox(width: 8),
            SocialIcon(imageName: "instagram.png"),
          ])
        ]),
      ),
    );
  }
}