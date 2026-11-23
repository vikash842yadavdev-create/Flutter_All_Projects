import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomGetSnackBar {
  static void success({
    required String title,
    required String message,
    String? position,
  }) {
    if (!Get.isSnackbarOpen) {
      Get.snackbar(
        title,
        message,
        backgroundColor: AppColors.snackSuccessBg,
        colorText: AppColors.snackTextColor,
        snackPosition: position == 'top'
            ? SnackPosition.TOP
            : SnackPosition.BOTTOM,
        borderColor: AppColors.snackSuccessBorder,
        borderWidth: 2.0.w,
        margin: const EdgeInsets.all(10.0),
      );
    } else {
      Get.closeAllSnackbars();
    }
  }

  static void error({
    required String title,
    required String message,
    String? position,
  }) {
    if (!Get.isSnackbarOpen) {
      Get.snackbar(
        title,
        message,
        backgroundColor: AppColors.snackErrorBg,
        colorText: AppColors.snackTextColor,
        snackPosition: position == 'top'
            ? SnackPosition.TOP
            : SnackPosition.BOTTOM,
        borderColor: AppColors.snackErrorBorder,
        borderWidth: 2.0.w,
        margin: const EdgeInsets.all(10.0),
      );
    } else {
      Get.closeAllSnackbars();
    }
  }

  static void show({
    required String title,
    required String message,
    String? position,
  }) {
    if (!Get.isSnackbarOpen) {
      Get.snackbar(
        title,
        message,
        backgroundColor: AppColors.snackBgColor,
        colorText: AppColors.snackTextColor,
        snackPosition: position == 'top'
            ? SnackPosition.TOP
            : SnackPosition.BOTTOM,
        borderColor: AppColors.snackBorderColor,
        borderWidth: 1.5.w,
        margin: const EdgeInsets.all(10.0),
      );
    } else {
      Get.closeAllSnackbars();
    }
  }
}
