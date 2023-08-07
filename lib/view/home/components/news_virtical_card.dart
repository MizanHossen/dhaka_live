import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../helpers/constants/constants.dart';

class NewsVirticalCard extends StatelessWidget {
  final String category;
  final String title;
  final String time;
  final String imageName;

  const NewsVirticalCard(
      {super.key,
      required this.category,
      required this.title,
      required this.time,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.14,
      padding: EdgeInsets.symmetric(vertical: 5.r),
      //  margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.sizeOf(context).height,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        image: DecorationImage(
                          image: AssetImage(imageName),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
                const SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: kdefaultPadding,
                          vertical: kdefaultPadding / 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: kMidPrimaryColor,
                        ),
                        child: Text(
                          category,
                          style: kSubtitleStyle,
                        ),
                      ),
                      Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: kTitleTextstyle.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        time,
                        style: kSubtitleStyle,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
