import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesContainorFirstWidget extends StatelessWidget {
  const CategoriesContainorFirstWidget({
    super.key,
    required this.prefixIcon,
    required this.productCount,
    required this.title,
  });

  final IconData prefixIcon;
  final String productCount;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.black1,
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: Row(
        children: [
          SizedBox(width: 24.w),

          Icon(prefixIcon, size: 28, color: AppColors.white1),

          SizedBox(width: 16.w),

          Expanded(
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
                color: AppColors.white1,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          VerticalDivider(
            color: AppColors.white1,
            thickness: 1,
            width: 20.w,
            indent: 20.h,
            endIndent: 20.h,
          ),

          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Text(
              '$productCount Products',
              style: GoogleFonts.poppins(
                color: AppColors.white1,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
