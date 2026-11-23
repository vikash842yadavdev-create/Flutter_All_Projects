import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:e_commerce_app/features/modules/common_widgets/custom_button2.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/controller/profile_screen_controller.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/widgets/profile_card.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/widgets/profile_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileScreenController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.white1,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h),

                ProfileCard(controller: controller,),

                SizedBox(height: 16.h),

                ProfileTileCard(items: controller.accountItems),

                SizedBox(height: 16.h),

                ProfileTileCard(items: controller.informationItems),

                SizedBox(height: 16.h),

                CustomButton2(
                  ontap: () {
                    controller.logout();
                  },
                  title: 'Logout',
                  borderColor: AppColors.text1.shade300,
                  textColor: AppColors.buttonText2,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

