import 'package:get/get.dart';
import '../view/category/category_screen.dart';
import '../view/home/home_screen.dart';
import '../view/search/search_screen.dart';
import '../view/settings/setting_screen.dart';

class NavBarController extends GetxController {
  var currentIndex = 0.obs;
  var navBarBody = [
    const Home(),
    const Category(),
    const Search(),
    Setting(),
  ].obs;

  void updateSelectedIndex(int index) {
    currentIndex.value = index;
  }
}
