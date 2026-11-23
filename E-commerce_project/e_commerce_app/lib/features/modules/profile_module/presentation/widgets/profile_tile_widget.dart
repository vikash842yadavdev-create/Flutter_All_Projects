import 'package:e_commerce_app/features/data/models/profile_tile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTilesWidget extends StatelessWidget {
  final ProfileTileModel item;

  const ProfileTilesWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.h),
      child: Row(
        children: [
          Container(
            width: 35.w,
            height: 35.w,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(item.icon, size: 18.sp, color: Colors.black),
          ),

          SizedBox(width: 16.w),

          Expanded(
            child: Text(
              item.title,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),

          // ------------------------------------------------
          // ARROW
          // ------------------------------------------------
          InkWell(
            onTap: item.onTap,
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16.sp,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
