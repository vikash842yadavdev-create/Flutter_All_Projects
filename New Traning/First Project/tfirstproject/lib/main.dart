import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tfirstproject/routes/app_routes.dart';
import 'package:tfirstproject/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,

          theme: AppTheme.lightTheme,

          darkTheme: AppTheme.darkTheme,

          themeMode: ThemeMode.dark,
          title: 'Flutter Demo',

          initialRoute: AppPages.initialPage,
          getPages: AppPages.routes,
          defaultTransition: Transition.rightToLeft,
          transitionDuration: Duration(milliseconds: 250),
        );
      },
    );
  }
}
