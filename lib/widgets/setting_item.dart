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
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(text), const Icon(Icons.arrow_forward)],
        ),
      ),
    );
  }
}
