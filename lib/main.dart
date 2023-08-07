import 'package:dhaka_live/helpers/constants/constants.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart' show EasyLoading;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'view/wrapper.dart' show Wrapper;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    Main(),
  );
}

// Future<void> _init() async {
//   await Hive.initFlutter();
//   HiveFuntions.registerHiveAdepters();
//   await HiveFuntions.openAllBoxes();
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setSystemUIOverlayStyle(uiConfig);
// }

class Main extends StatelessWidget {
  const Main({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var theme = Provider.of<ThemeProvider>(context);

    return ScreenUtilInit(
      // todo add your (Xd / Figma) artboard size
      designSize: const Size(380, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      rebuildFactor: (old, data) => true,
      builder: (context, widget) {
        return GetMaterialApp(
          title: "Dhaka Live",
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: GoogleFonts.hindSiliguriTextTheme(),
            scaffoldBackgroundColor: kPrimaryBgColor,
            primaryColor: kPrimaryColor,
          ),
          home: Wrapper(),
        );
      },
    );
  }
}
