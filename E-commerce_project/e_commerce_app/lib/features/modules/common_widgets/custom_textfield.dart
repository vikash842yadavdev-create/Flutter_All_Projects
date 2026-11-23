import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.widget, required this.lable});
  final Widget widget;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4.h),
        Container(
          width: double.infinity,
          height: 45.h,
          decoration: BoxDecoration(
            color: AppColors.text1.shade100,
            border: Border.all(width: 1.sp, color: AppColors.black1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: widget,
        ),
      ],
    );
  }
}
