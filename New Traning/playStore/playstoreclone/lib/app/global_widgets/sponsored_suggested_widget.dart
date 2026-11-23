import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playstoreclone/app/global_widgets/dot_widget.dart';

class SponsoredSuggestedWidget extends StatelessWidget {
  final String title,logo, rating, sizeInMB;
  final String desc1;
  final String? desc2, desc3;


  new({
    required this.title,
    required this.desc1,
    this.desc2,
    this.desc3,
    required this.logo,
    required this.rating,
    required this.sizeInMB,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 16),
          padding: EdgeInsets.zero,
          height: 45.h,
          width: 45.h,
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(image: AssetImage(logo), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10),
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

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            SizedBox(height: 4.h),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Text(desc1, style: TextStyle(fontSize: 10)),
            //     SizedBox(width: 5.w),
            //     DotWidget(),
            //     SizedBox(width: 5.w),
            //     Text(desc2!, style: TextStyle(fontSize: 10)),
            //     SizedBox(width: 5.w),
            //     DotWidget(),
            //     SizedBox(width: 5.w),
            //     Text(desc3!, style: TextStyle(fontSize: 10)),
            //     SizedBox(width: 5.w),
            //   ],
            // ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 5.w,
              runSpacing: 4.h,
              children: [
                Text(desc1, style: TextStyle(fontSize: 10)),
                DotWidget(),
                if (desc2 != null) Text(desc2!, style: TextStyle(fontSize: 10)),
                if (desc3 != null) DotWidget(),
                if (desc3 != null) Text(desc3!, style: TextStyle(fontSize: 10)),
              ],
            ),
            SizedBox(height: 4.h),
            Row(
              children: [
                Container(
                  height: 15.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(rating, style: TextStyle(fontSize: 10)),
                      SizedBox(width: 2.w),
                      Icon(Icons.star, size: 10, color: Colors.blue.shade800),
                    ],
                  ),
                ),
                SizedBox(width: 12.w),
                Text('$sizeInMB', style: TextStyle(fontSize: 10)),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
