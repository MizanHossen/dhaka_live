import 'package:dhaka_live/helpers/constants/constants.dart';
import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;

  const SettingItem({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.06,
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: kTitleTextstyle,
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    color: kMidBlackColor,
                  )
                ],
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
