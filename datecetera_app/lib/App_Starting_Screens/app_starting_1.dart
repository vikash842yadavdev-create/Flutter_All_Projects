import 'package:datecetera_app/App_Starting_Screens/app_Starting_2.dart';
import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/widgets/starting_onboarding_layout_widget.dart';
import 'package:flutter/material.dart';

class AppStartingScreen1 extends StatelessWidget {
  const AppStartingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return StartingOnboardingLayout(
      image: AppAssets.imgFirstImage,
      text1: AppAssets.imgFirstTextOne,
      text2: AppAssets.imgFirstTextTwo,
      nextScreen: const AppStartingScreen2(),
    );
  }
}
