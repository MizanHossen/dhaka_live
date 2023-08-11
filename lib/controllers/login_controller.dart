import 'package:dhaka_live/view/nav_bar/nav_bar_screen.dart';
import 'package:dhaka_live/widgets/custom_snackbar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helpers/constants/api_url.dart';
import '../helpers/routes/custom_routes.dart';
import 'dart:ui';

import '../helpers/user_service/user_service.dart';
import '../widgets/custom_loading_dialog_widget.dart';

class LoginController extends GetxController {
  UserService userService = UserService();

  TextEditingController gmailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  var isLoading = false.obs;
  var token = "".obs;

  loginUser(BuildContext context) async {
    isLoading.value = true;
    showDialog(
        context: context,
        builder: (context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: const CustomLoadingWidget(
              message: "Login",
            ),
          );
        });

    if (gmailController.text.isEmpty || passController.text.isEmpty) {
      isLoading.value = false;

      // ignore: avoid_print
      print("Please fill full form");
      Get.back();
      //CustomSnackBar.showCustomToast(message: "Please fill full form");
    } else {
      Dio dio = Dio(BaseOptions(
        baseUrl: ApiUrl.baseUrl,
      ));

      try {
        final response = await dio.post(ApiUrl.loginUrl, data: {
          "email": gmailController.text.trim(),
          "password": passController.text.trim(),
        });

        if (response.statusCode == 200) {
          // print("HTTP Method : ${response.requestOptions.method}");
          // print("HTTP Url : ${response.requestOptions.baseUrl}");
          // print("HTTP Path : ${response.requestOptions.path}");
          // print("HTTP Status Code : ${response.statusCode}");
          // print("HTTP Status msgggg : ${response.statusMessage}");

          var allData = response.data;

          token.value = allData["token"];
          // ignore: avoid_print
          print("Tokenn------------: $token");
          // token.value = response.data["token"];
          userService.saveBoolean(key: 'is-user', value: true);
          userService.saveString(key: 'token', value: token.value);

          // ignore: use_build_context_synchronously
          Navigator.push(context, SlideLeftRoute(page: const NavBar()));
          isLoading.value = false;

          // isLoading.value = false;
        } else {
          CustomSnackBar.showCustomToast(message: "e.toString()");

          Get.back();
        }

        // ignore: deprecated_member_use
      } catch (e) {
        Get.back();
        CustomSnackBar.showCustomToast(message: "Error  :-(");
      }
    }
  }
}
