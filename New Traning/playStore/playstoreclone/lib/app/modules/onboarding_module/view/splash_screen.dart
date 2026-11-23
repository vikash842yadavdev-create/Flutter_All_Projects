import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playstoreclone/app/modules/onboarding_module/controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
      builder: (controller) {
        return const Scaffold(
          body: Center(child: Text('Welcome', style: TextStyle(fontSize: 32))),
        );
      },
    );
  }
}
