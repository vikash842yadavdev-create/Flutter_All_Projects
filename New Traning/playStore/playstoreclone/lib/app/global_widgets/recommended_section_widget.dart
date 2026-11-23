import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendedSectionWidget extends StatelessWidget {
  final String logo, title, rating;

  new({required this.logo, required this.title, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100.sp,
          width: 100.sp,
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(image: AssetImage(logo), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(30.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.12),
                blurRadius: 6,
                spreadRadius: 1,
                offset: const Offset(0, 2),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4.h),
        Row(
          children: [
            Container(
              height: 12.h,
              width: 30.w,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(rating, style: TextStyle(fontSize: 8)),
                  SizedBox(width: 2.w),
                  Icon(Icons.star, size: 8, color: Colors.blue.shade800),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
