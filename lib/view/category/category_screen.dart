import 'package:dhaka_live/helpers/constants/constants.dart';
import 'package:dhaka_live/widgets/category_item.dart';
import 'package:flutter/material.dart';

import '../../helpers/constants/images.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    List catItemName = [
      "জাতীয়",
      "আন্তর্জাতিক",
      "অর্থ বাণিজ্য",
      "খেলাধুলা",
      "তথ্য ও প্রযুক্তি",
      "শিক্ষা",
      "লাইফস্টাইল",
      "ভিডিও",
      "বিনোদন",
      "স্বাস্থ্য",
    ];
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
        padding: EdgeInsets.only(top: kdefaultPadding),
        child: ListView.builder(
          itemCount: catItemName.length,
          itemBuilder: (context, index) {
            return CategoryItem(text: catItemName[index].toString());
          },
        ),
      ),
    );
  }
}
