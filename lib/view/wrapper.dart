import 'package:dhaka_live/view/screen1.dart';
import 'package:dhaka_live/view/search/search_screen.dart';
import 'package:dhaka_live/view/settings/setting_screen.dart';
import 'package:flutter/material.dart'
    ;

import '../helpers/size_config/size_config.dart' show ScreenSize;
import 'category/category_screen.dart';

class Wrapper extends StatelessWidget {
  final ScreenSize _sizeConfig = ScreenSize();

  Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _sizeConfig.init(context);
    return const Screen1();
  }
}


//************************************ nav bar ********************* */

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var currentIndex = 0;
var navBarBody = [
  const Center(child: Text("Home"),),
  const Category(),
  const Search(),
  const Setting(),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navBarBody.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: primaryColor,
          unselectedLabelStyle: const TextStyle(color: blackColor),
          selectedLabelStyle: const TextStyle(color: primaryColor),
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "হোম"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined), label: "ক্যাটাগরি"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "সার্চ"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: "সেটিং"),
          ]),
    );
  }
}
