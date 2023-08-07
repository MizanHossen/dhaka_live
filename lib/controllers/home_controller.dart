import 'package:dhaka_live/view/home/components/breaking_news_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  var currentIndex = 0.obs;
  List screen = [
    const BreakingNewsScreen(),
    const Center(child: Text("Braking News")),
  ];
}
