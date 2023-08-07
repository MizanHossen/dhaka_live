import 'package:dhaka_live/helpers/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  final Color color;
  final Color textColor;
  final BoxBorder? border;

  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    this.border,
    required this.ontap,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.r),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5.r),
          border: border,
        ),
        child: Center(
          child: Text(
            text,
            style: kTitleTextstyle.copyWith(
              color: textColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
