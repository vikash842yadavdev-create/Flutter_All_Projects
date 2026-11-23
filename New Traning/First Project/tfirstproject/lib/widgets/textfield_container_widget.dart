import 'package:flutter/material.dart';
import 'package:tfirstproject/utils/app_colors.dart';
import 'package:tfirstproject/utils/app_radius.dart';

class TextfieldcontainerWidget extends StatelessWidget {
  const TextfieldcontainerWidget({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.surfaceContainer,
        borderRadius: BorderRadius.circular(AppRadius.lg),
      ),

      child: widget,
    );
  }
}
