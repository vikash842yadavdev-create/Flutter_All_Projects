import 'package:e_commerce_app/features/modules/profile_module/presentation/controller/profile_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, required this.controller});
  final ProfileScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 20.r,
            offset: Offset(0, 8.h),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.network(
              controller.userData?.image ?? '',
              width: 55.w,
              height: 55.w,
              fit: BoxFit.cover,

              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }

                return Container(
                  width: 65.w,
                  height: 65.w,
                  color: Colors.grey.shade100,
                  child: Center(
                    child: SizedBox(
                      width: 20.w,
                      height: 20.w,
                      child: const CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
                );
              },

              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 65.w,
                  height: 65.w,
                  color: Colors.grey.shade100,
                  child: Icon(Icons.person, size: 45.sp, color: Colors.grey),
                );
              },
            ),
          ),

          SizedBox(width: 18.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.userData?.firstName ?? 'user',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),

                Text(
                  controller.userData?.email ?? 'user@example.com',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
