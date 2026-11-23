import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterfirebasenew/features/config/routes/app_routes.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      builder: (_, context) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            initialRoute: AppPages.initialPage,
            getPages: AppPages.routes,
            defaultTransition: Transition.rightToLeft,
            transitionDuration: Duration(milliseconds: 500),
          ),
        );
      },
    );
  }
}
