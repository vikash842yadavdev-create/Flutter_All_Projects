import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton1 extends StatelessWidget {
  const CustomButton1({
    super.key,
    this.buttonBg,
    required this.ontap,
    required this.title,
    this.textColor,
    this.prifixIcon,
    this.iconColor,
  });

  final Color? buttonBg;
  final Color? textColor;
  final VoidCallback ontap;
  final String title;
  final IconData? prifixIcon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 45.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: buttonBg ?? AppColors.white1,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: prifixIcon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(prifixIcon, color: iconColor,size: 20.sp,),
                  SizedBox(width: 4.w),
                  Center(
                    child: Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: textColor ?? AppColors.black1,
                      ),
                    ),
                  ),
                ],
              )
            : Center(
                child: Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: textColor ?? AppColors.black1,
                  ),
                ),
              ),
      ),
    );
  }
}
