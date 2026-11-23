import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    super.key,
    required this.title,
    this.selected = false,
    this.onTap,
  });

  final String title;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 12.w),
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selected ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(
            color: selected ? Colors.black : Colors.grey.shade300,
            width: 1.5,
          ),
        ),
        child: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: selected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
