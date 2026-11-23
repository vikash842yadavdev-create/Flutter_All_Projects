import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextfieldcontainerWidget extends StatelessWidget {
  const TextfieldcontainerWidget({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(width: 1.w, color: Colors.grey.shade300),
      ),

      child: widget,
    );
  }
}
