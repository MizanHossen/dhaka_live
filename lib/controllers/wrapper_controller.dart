import 'package:dhaka_live/view/login/login_screen.dart';
import 'package:dhaka_live/view/nav_bar/nav_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../helpers/user_service/user_service.dart';

class WrapperController extends GetxController {
  UserService userService = UserService();
  final count = 0.obs;

  // method() {}

  @override
  void onInit() {
    update();
    super.onInit();
  }

  authCheck(BuildContext context) async {
    var isUser = await userService.getBool();
    if (isUser == true) {
      // ignore: use_build_context_synchronously
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const NavBar(),
          ));
    } else {
      // ignore: use_build_context_synchronously
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ));
    }
  }

  void increment() => count.value++;
}
