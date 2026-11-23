import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton2 extends StatelessWidget {
  const CustomButton2({
    super.key,
    this.borderColor,
    required this.ontap,
    required this.title,
    this.textColor,
    this.prifixIcon,
    this.iconColor,
  });

  final Color? borderColor;
  final Color? textColor;
  final VoidCallback ontap;
  final String title;
  final FaIconData? prifixIcon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 45.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(width: 2, color: borderColor ?? AppColors.white1),
        ),
        child: prifixIcon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(prifixIcon, color: iconColor,size: 20.sp,),
                  SizedBox(width: 6.w),
                  Center(
                    child: Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: textColor ?? AppColors.white1,
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
                    color: textColor ?? AppColors.white1,
                  ),
                ),
              ),
      ),
    );
  }
}
