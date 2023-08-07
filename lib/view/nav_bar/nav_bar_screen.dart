import 'package:dhaka_live/controllers/nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../helpers/constants/constants.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final NavBarController navBarController = Get.put(NavBarController());
    return Scaffold(
      body: Obx(
        () => navBarController.navBarBody
            .elementAt(navBarController.currentIndex.value),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: kPrimaryColor,
            unselectedLabelStyle: const TextStyle(color: kBlackColor),
            selectedLabelStyle: const TextStyle(color: kPrimaryColor),
            type: BottomNavigationBarType.fixed,
            currentIndex: navBarController.currentIndex.value,
            onTap: navBarController.updateSelectedIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "হোম",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: "ক্যাটাগরি",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "সার্চ",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined),
                label: "সেটিং",
              ),
            ],
          )),
    );
  }
}
