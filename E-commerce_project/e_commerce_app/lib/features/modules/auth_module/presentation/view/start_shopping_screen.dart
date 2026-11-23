import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:e_commerce_app/features/modules/auth_module/presentation/controler/start_shopping_controller.dart';
import 'package:e_commerce_app/features/modules/common_widgets/custom_button1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StartShoppingScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final StartShoppingController controller =
        Get.find<StartShoppingController>();
    return Scaffold(
      backgroundColor: AppColors.white1,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outline,
              size:32.sp,
              color: AppColors.successful,
            ),
            SizedBox(height: 12.h),
            Text(
              'Successful!',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: Text(
                'You have successfully regustered in our app and start working on it.',
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  color: AppColors.text1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 224.h),
            CustomButton1(
              ontap: () {
                controller.goMain();
              },
              title: 'Start Shopping',
              buttonBg: AppColors.buttonBg2,
              textColor: AppColors.buttonText1,
            ),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}
