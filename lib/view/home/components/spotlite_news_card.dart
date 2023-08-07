import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../helpers/constants/constants.dart';

class SpotliteNewsCard extends StatelessWidget {
  final String imageName;
  final String category;
  final String title;

  const SpotliteNewsCard(
      {super.key,
      required this.imageName,
      required this.category,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          height: MediaQuery.sizeOf(context).height,
          width: 160.w,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Image(fit: BoxFit.cover, image: AssetImage(imageName)),
        ),
        Container(
          height: MediaQuery.sizeOf(context).height,
          width: 160.w,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(.2),
                    Colors.black.withOpacity(.8)
                  ])),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kPrimaryColor),
                  child: Text(category, style: const TextStyle(fontSize: 12)),
                ),
                const SizedBox(height: 5),
                Text(
                  title,
                  style: const TextStyle(fontSize: 13, color: Colors.white),
                )
              ]),
        ),
      ],
    );
  }
}
