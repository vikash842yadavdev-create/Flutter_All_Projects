import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject001/app/Core/utils/app_textstyle.dart';

class TextfieldLableTextWidget extends StatelessWidget {
  const TextfieldLableTextWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextstyle.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    );
  }
}
