import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final String imageName;
  final VoidCallback? onTap;

  const SocialIcon({super.key, required this.imageName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Image(
        image: AssetImage(imageName),
        width: 30,
        height: 30,
      ),
    );
  }
}
