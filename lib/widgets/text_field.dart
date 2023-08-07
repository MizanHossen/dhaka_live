import 'package:dhaka_live/helpers/constants/constants.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final String hintext;
  final IconData? icon;
  final TextEditingController? controller;

  const SearchField(
      {super.key, required this.hintext, this.icon, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kdefaultPadding),
      padding: const EdgeInsets.only(left: 10),
      // height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: TextFormField(
        cursorColor: kPrimaryColor,
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
          hintText: hintext,
        ),
      ),
    );
  }
}
