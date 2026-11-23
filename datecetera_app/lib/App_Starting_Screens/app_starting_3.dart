import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/LoginScreens/login_screen.dart';
import 'package:datecetera_app/widgets/starting_onboarding_layout_widget.dart';
import 'package:flutter/material.dart';

class AppStartingScreen3 extends StatelessWidget {
  const AppStartingScreen3({super.key});

    @override
  Widget build(BuildContext context) {
    return StartingOnboardingLayout(
      image: AppAssets.imgThirdImage,
      text1: AppAssets.imgThirdTextOne,
      text2: AppAssets.imgThirdTextTwo,
      nextScreen: const LoginScreen(),
    );
  }
}

