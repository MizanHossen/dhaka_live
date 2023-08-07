import 'package:dhaka_live/helpers/constants/constants.dart';
import 'package:dhaka_live/view/home/home_screen.dart';
import 'package:dhaka_live/view/screen1.dart';
import 'package:dhaka_live/view/search/search_screen.dart';
import 'package:dhaka_live/view/settings/setting_screen.dart';
import 'package:flutter/material.dart';

import '../helpers/size_config/size_config.dart' show ScreenSize;
import 'category/category_screen.dart';
import 'nav_bar/nav_bar_screen.dart';

class Wrapper extends StatelessWidget {
  final ScreenSize _sizeConfig = ScreenSize();

  Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _sizeConfig.init(context);
    return const NavBar();
  }
}
