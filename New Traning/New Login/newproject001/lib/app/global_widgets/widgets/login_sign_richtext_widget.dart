import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject001/app/Core/utils/app_colors.dart';
import 'package:newproject001/app/Core/utils/app_textstyle.dart';

class LoginSignRichtextWidget extends StatelessWidget {
  const LoginSignRichtextWidget({
    super.key,
    required this.firstTitle,
    required this.onTap,
    required this.secondTitle,
  });

  final String firstTitle;
  final String secondTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          text: firstTitle,
          style: AppTextstyle.inter(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          children: [
            TextSpan(
              text: secondTitle,
              style: AppTextstyle.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.primary,
              ),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}
