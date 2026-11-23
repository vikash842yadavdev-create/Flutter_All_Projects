import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject001/app/Core/utils/app_colors.dart';
import 'package:newproject001/app/Core/utils/app_textstyle.dart';

class CustomElivatedButton extends StatelessWidget {
  const CustomElivatedButton({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 48.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(width: 1.w, color: AppColors.secondary),
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextstyle.inter(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
