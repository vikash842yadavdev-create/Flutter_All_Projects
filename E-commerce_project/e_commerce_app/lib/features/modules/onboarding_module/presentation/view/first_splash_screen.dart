import 'package:e_commerce_app/features/config/theme/assets.dart';
import 'package:e_commerce_app/features/modules/onboarding_module/presentation/controler/first_splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FisrtSplashScreen extends StatelessWidget {
  const FisrtSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FirstSplashController>(
      builder: (controller) {
        return Scaffold(
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(Assets.firstSplashImg, fit: BoxFit.cover),
          ),
        );
      },
    );
  }
}
