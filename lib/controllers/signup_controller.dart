// ignore_for_file: prefer_const_constructors

import 'package:dhaka_live/helpers/routes/custom_routes.dart';
import 'package:dhaka_live/view/login/login_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helpers/constants/api_url.dart';

class SignUpController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController gmailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  var isLoading = false.obs;

  signUpUser(BuildContext context) async {
    isLoading.value = true;
    if (nameController.text.isEmpty ||
        gmailController.text.isEmpty ||
        passController.text.isEmpty) {
      // ignore: avoid_print
      print("Please fill full form");
      isLoading.value = false;
      //CustomSnackBar.showCustomToast(message: "Please fill full form");
    } else {
      Dio dio = Dio(BaseOptions(
        baseUrl: ApiUrl.baseUrl,
      ));

      try {
        final response = await dio.post(ApiUrl.signUpUrl, data: {
          "name": nameController.text.trim(),
          "email": gmailController.text.trim(),
          "password": passController.text.trim(),
        });

        if (response.statusCode == 200) {
          // print("HTTP Method : ${response.requestOptions.method}");
          // print("HTTP Url : ${response.requestOptions.baseUrl}");
          // print("HTTP Path : ${response.requestOptions.path}");
          // print("HTTP Status Code : ${response.statusCode}");
          // print("HTTP Status msgggg : ${response.statusMessage}");

          //var allData = response.data;

          // ignore: use_build_context_synchronously
          Navigator.push(context, SlideRightRoute(page: LoginScreen()));
          isLoading.value = false;

          // isLoading.value = false;
        }
      } catch (e) {
        // ignore: avoid_print
        print(e);
      }
    }
  }
}
