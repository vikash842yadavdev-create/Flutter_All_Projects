import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.isSearch,
    this.leadingIcon,
    this.tralingIcon,
    required this.isBackground, this.onTap1,this.onTap2,
  });
  final bool isSearch;
  final bool isBackground;
  final IconData? leadingIcon;
  final IconData? tralingIcon;
  final VoidCallback? onTap1;
  final VoidCallback? onTap2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.transparent),
      child: Row(
        mainAxisAlignment: isSearch == true
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap1,
            child: Container(
              height: 30.sp,
              width: 30.sp,
              decoration: BoxDecoration(
                color: AppColors.black1,
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: Icon(leadingIcon, color: AppColors.white1, size: 16.sp),
            ),
          ),
          if (isSearch)
            InkWell(
              onTap: onTap2,
              child: Container(
                height: 30.sp,
                width: 30.sp,
                decoration: BoxDecoration(
                  color: isBackground
                      ? AppColors.text1.shade100
                      : AppColors.transpraint,
                  borderRadius: BorderRadius.circular(50.r),
                ),
                child: Icon(tralingIcon, color: AppColors.black1, size: 16.sp),
              ),
            ),
        ],
      ),
    );
  }
}
