import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject001/app/Core/utils/app_textstyle.dart';

class DividerOneWidget extends StatelessWidget {
  const DividerOneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Colors.grey.shade200, thickness: 1)),

        SizedBox(width: 16.w),

        Text(
          'Or',
          style: AppTextstyle.inter(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade700,
          ),
        ),

        SizedBox(width: 16.w),

        Expanded(child: Divider(color: Colors.grey.shade200, thickness: 1)),
      ],
    );
  }
}
