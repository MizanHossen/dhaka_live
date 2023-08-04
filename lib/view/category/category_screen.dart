import 'package:dhaka_live/widgets/category_item.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: ListView.builder(
          itemCount: catItemName.length,
          itemBuilder: (context, index) {
            return CategoryItem(text: catItemName[index].toString());
          }),
    );
  }
}