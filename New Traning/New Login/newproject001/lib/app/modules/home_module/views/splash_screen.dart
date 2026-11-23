import 'package:flutter/material.dart';
import 'package:get_x/get.dart';
import 'package:newproject001/app/modules/home_module/controller/splash_controller.dart';
import 'package:newproject001/app/Core/utils/app_colors.dart';
import 'package:newproject001/app/Core/utils/app_textstyle.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: Text(
              'Welcome',
              style: AppTextstyle.playfair(
                color: AppColors.primary,
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        );
      },
    );
  }
}
