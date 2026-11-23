import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tfirstproject/utils/app_colors.dart';
import 'package:tfirstproject/utils/app_radius.dart';
import 'package:tfirstproject/utils/app_spacing.dart';
import 'package:tfirstproject/utils/app_typography.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const GradientButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52.h,
      margin: EdgeInsets.symmetric(horizontal: AppSpacing.xs.w),
      decoration: BoxDecoration(
        gradient: AppColors.primaryGradient,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.20),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(AppRadius.lg.r),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(AppRadius.lg.r),
          splashColor: AppColors.onPrimary.withValues(alpha: 0.12),
          highlightColor: AppColors.onPrimary.withValues(alpha: 0.06),
          child: Center(
            child: Text(
              text.toUpperCase(),
              style: AppTypography.button.copyWith(color: AppColors.onPrimary),
            ),
          ),
        ),
      ),
    );
  }
}
