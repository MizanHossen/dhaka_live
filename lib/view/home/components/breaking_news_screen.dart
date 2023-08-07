import 'package:dhaka_live/helpers/constants/images.dart';
import 'package:dhaka_live/view/home/components/spotlite_news_card.dart';
import 'package:flutter/material.dart';
import '../../../helpers/constants/constants.dart';
import 'news_virtical_card.dart';

class BreakingNewsScreen extends StatelessWidget {
  const BreakingNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // *************************************** Header News section **************************
          Text("স্বপ্নের পদ্মা সেতুর উদ্বোধন ২৫ জুন", style: kHeadingTextStyle),
          const Text(
              "স্বপ্নের পদ্মা সেতু ২৫ জুন উদ্বোধন করা হবে। এদিন সকাল ১০ টায় প্রধানমন্ত্রী শেখ হাসিনা সেতুর উদ্বোধন করবেন। স্বপ্নের পদ্মা সেতু ২৫ জুন উদ্বোধন করা হবে। এদিন সকাল ১০ টায় প্রধানমন্ত্রী শেখ হাসিনা সেতুর উদ্বোধন করবেন।"),
          const Text("১০ মিনিট আগে", style: TextStyle(color: kSecounderyColor)),
          const SizedBox(height: 10),
          const Divider(),

          // *************************************** Item News section **************************

          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return const NewsVirticalCard(
                category: "আন্তুর্জাতিক",
                title: "আসামে বন্যায় মৃত্যু ৭০ জনের, গৃহহীন ৩০ লাখের বেশি",
                time: "১০ মিনিট আগে",
                imageName: Images.image1,
              );
            },
          ),
          gapHeight(size: 10),

          // *************************************** Sportlite News section **************************

          SizedBox(
            // height: 220,
            height: size.height * 0.25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return const SpotliteNewsCard(
                  imageName: Images.image4,
                  category: "জাতীয়",
                  title: "ফেরি চলাচলের নতুন নিয়ম শিমুলিয়া-বাংলাবাজার রুটে",
                );
              },
            ),
          ),
          const Divider(),
          gapHeight(size: 10),
          const NewsVirticalCard(
            category: "আন্তুর্জাতিক",
            title: "আসামে বন্যায় মৃত্যু ৭০ জনের, গৃহহীন ৩০ লাখের বেশি",
            time: "১০ মিনিট আগে",
            imageName: Images.image5,
          ),
        ],
      ),
    );
  }
}
