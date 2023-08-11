import 'package:dhaka_live/controllers/wrapper_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../helpers/size_config/size_config.dart' show ScreenSize;
import '../helpers/user_service/user_service.dart';

class Wrapper extends StatelessWidget {
  final ScreenSize _sizeConfig = ScreenSize();

  Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final WrapperController wrapperController = Get.put(WrapperController());
    UserService userService = UserService();

    wrapperController.authCheck(context);

    // ignore: unused_local_variable
    var isUser = userService.getBool();
    _sizeConfig.init(context);
    return Container();
  }
}
