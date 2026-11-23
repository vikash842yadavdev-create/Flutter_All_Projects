import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onItemSelected,
  });

  final int currentIndex;
  final Function(int) onItemSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12.w, right: 12.w, bottom: 12.h),
      height: 58.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 8.w),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.10),
            blurRadius: 15.r,
            offset: Offset(0, -2.h),
          ),
        ],
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _navItem(index: 0, icon: Icons.home_rounded, label: 'Home'),

          _navItem(index: 1, icon: Icons.shopping_cart_rounded, label: 'Cart'),

          _navItem(
            index: 2,
            icon: Icons.notifications_rounded,
            label: 'Alerts',
          ),

          _navItem(index: 3, icon: Icons.person_rounded, label: 'Profile'),
        ],
      ),
    );
  }

  Widget _navItem({
    required int index,
    required IconData icon,
    required String label,
  }) {
    final bool isSelected = currentIndex == index;

    // Unselected item
    if (!isSelected) {
      return GestureDetector(
        onTap: () => onItemSelected(index),
        child: Container(
          width: 32.w,
          height: 32.h,
          decoration: const BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 20.sp, color: AppColors.black1),
        ),
      );
    }

    return GestureDetector(
      onTap: () => onItemSelected(index),

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 550),
        curve: Curves.easeInOutCubic,

        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),

        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(30.r),
        ),

        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 32.w,
              height: 32.h,

              decoration: BoxDecoration(
                color: AppColors.black1,
                shape: BoxShape.circle,
              ),

              child: Icon(icon, size: 22.sp, color: Colors.white),
            ),

            SizedBox(width: 4.w),

            Text(
              label,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black1,
              ),
            ),

            SizedBox(width: 6.w),
          ],
        ),
      ),
    );
  }
}
