import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:tfirstproject/controller/splash_controller.dart';
import 'package:tfirstproject/utils/app_colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.backgroundDark,
          body: Container(
            decoration: const BoxDecoration(
              gradient: AppColors.backgroundGradient,
            ),
            child: Center(
              child: GradientText(
                'Welcome',
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
                colors: const [
                  AppColors.primaryDark,
                  AppColors.primary,
                  AppColors.primaryLight,
                  AppColors.primary,
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
