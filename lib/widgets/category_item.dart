import 'package:dhaka_live/helpers/constants/constants.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;

  const CategoryItem({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
        decoration: BoxDecoration(
            color: kSeconderyBgColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text,
            style: kTitleTextstyle,
          ),
        ),
      ),
    );
  }
}
