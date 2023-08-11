// ignore_for_file: unused_field

import 'package:dhaka_live/helpers/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helpers/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  final String? labelText;
  final String hintText;
  final TextEditingController? controller;
  final bool? isSuffixIcon;
  final bool readOnly;
  final bool? obscureText;

  const CustomTextField({
    super.key,
    this.readOnly = true,
    this.obscureText = false,
    this.isSuffixIcon,
    this.labelText,
    required this.hintText,
    required this.controller,
  });

//   @override
//   State<CustomTextField> createState() => _CustomTextFieldState();
// }

// class _CustomTextFieldState extends State<CustomTextField> {
//   final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimaryColor,
      obscureText: obscureText!,

      // enabled: widget.readOnly,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 12.r).copyWith(left: 15),
        filled: true,
        fillColor: kTextFieldColor,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: labelText,
        labelStyle: kTitleTextstyle.copyWith(color: Colors.black),
        hintText: hintText,
        hintStyle: kTitleTextstyle.copyWith(
          color: kSecounderyColor,
        ),
        suffixIcon: isSuffixIcon == true
            ? const ImageIcon(
                AssetImage(Images.helpCircle),
                color: kSecounderyTextColor,
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: const BorderSide(color: kSecounderyColor, width: 0.0),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: const BorderSide(color: kSecounderyColor, width: 0.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: const BorderSide(color: kSecounderyColor, width: 0.0),
        ),
      ),
    );
  }
}
