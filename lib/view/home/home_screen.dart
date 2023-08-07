import 'package:dhaka_live/controllers/home_controller.dart';
import 'package:dhaka_live/helpers/constants/constants.dart';
import 'package:dhaka_live/helpers/constants/images.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final HomeScreenController homeScreenController =
        Get.put(HomeScreenController());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //******************************************** App Bar Section ********************* */
          SliverAppBar(
            floating: true,
            automaticallyImplyLeading: false,
            backgroundColor: kMidBlackColor,
            title: Image.asset(
              Images.logoWhite,
              //height: 50,
              width: size.width * 0.45,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_active,
                  color: Colors.white,
                ),
              )
            ],
          ),

          //************************************** Header Image section ******************************** */

          SliverToBoxAdapter(
            child: Image(
              height: size.height * 0.2,
              width: double.infinity,
              fit: BoxFit.fitWidth,
              image: const AssetImage(Images.image6),
            ),
          ),

          //*************************************** Tab section ************************************ */

          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.r).copyWith(top: 10),
              child: SizedBox(
                //color: Colors.black,
                height: size.height * 0.05,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (ctx, index) {
                    return Obx(
                      () => GestureDetector(
                        onTap: () {
                          homeScreenController.currentIndex.value = index;
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          margin: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 5,
                          ).copyWith(left: 0),
                          padding:
                              EdgeInsets.symmetric(horizontal: kdefaultPadding),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:
                                homeScreenController.currentIndex.value == index
                                    ? kMidPrimaryColor
                                    : kSeconderyBgColor,
                          ),
                          child: Center(
                            child: Text(
                              "ব্রেকিং নিউজ",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: kSubtitleStyle.copyWith(
                                fontWeight:
                                    homeScreenController.currentIndex.value ==
                                            index
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                color:
                                    homeScreenController.currentIndex.value ==
                                            index
                                        ? kPrimaryColor
                                        : kSecounderyTextColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),

          //*************************************** Screen section ************************************ */

          SliverToBoxAdapter(
            child: Obx(
              () => homeScreenController
                  .screen[homeScreenController.currentIndex.value],
            ),
          ),
        ],
      ),
    );
  }
}
