import 'package:e_commerce_app/features/config/theme/assets.dart';
import 'package:e_commerce_app/features/modules/common_widgets/custom_button1.dart';
import 'package:e_commerce_app/features/modules/common_widgets/custom_button2.dart';
import 'package:e_commerce_app/features/modules/onboarding_module/presentation/controler/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      builder: (controller) {
        return Scaffold(
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.secondSplashImg),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 110.h,
                      width: 250.w,
                      child: Image.asset(
                        Assets.logoWhite1,
                        fit: BoxFit.contain,
                      ),
                    ),

                    SizedBox(height: 180.h),

                    CustomButton1(ontap: controller.login, title: 'Login'),

                    SizedBox(height: 12.h),

                    CustomButton2(ontap: controller.signUp, title: 'Sign Up'),

                    SizedBox(height: 12.h),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
