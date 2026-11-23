import 'package:datecetera_app/App_Starting_Screens/app_starting_3.dart';
import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/widgets/starting_onboarding_layout_widget.dart';
import 'package:flutter/material.dart';

class AppStartingScreen2 extends StatelessWidget {
  const AppStartingScreen2({super.key});

    @override
  Widget build(BuildContext context) {
    return StartingOnboardingLayout(
      image: AppAssets.imgSecondImage,
      text1: AppAssets.imgSecondTextOne,
      text2: AppAssets.imgSecondTextTwo,
      nextScreen: const AppStartingScreen3(),
    );
  }

}
