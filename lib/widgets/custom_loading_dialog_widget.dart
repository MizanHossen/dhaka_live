import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../helpers/constants/constants.dart';

class CustomLoadingWidget extends StatelessWidget {
  final String? message;
  const CustomLoadingWidget({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    //SizeBuilder.init(context);
    return AlertDialog(
      key: key,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 25.r),
            child: const SpinKitFadingCube(
              color: kPrimaryColor,
              duration: Duration(milliseconds: 500),
            ),
          ),
          gapHeight(size: 30),
          Text("$message, please wait....."),
        ],
      ),
    );
  }
}
