import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject001/app/Core/utils/app_textstyle.dart';

class LoginsignupTitleTextWidget extends StatelessWidget {
  const LoginsignupTitleTextWidget({
    super.key,
    required this.description,
    required this.title,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppTextstyle.playfair(
            fontSize: 26.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        Text(
          description,
          style: AppTextstyle.inter(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            letterSpacing: -0.2
          ),
        ),
      ],
    );
  }
}
