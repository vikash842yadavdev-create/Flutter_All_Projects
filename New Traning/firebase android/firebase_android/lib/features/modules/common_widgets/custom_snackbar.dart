import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomGetSnackBar {
  static void snackBar({
    required String title,
    required String message,
    String? position,
  }) {
    if (!Get.isSnackbarOpen) {
      Get.snackbar(
        title,
        message,
        backgroundColor: Colors.green.shade300,
        colorText: Colors.black,
        snackPosition: position == 'top'
            ? SnackPosition.TOP
            : SnackPosition.BOTTOM,
        borderColor: Colors.green,
        borderWidth: 2.0.w,
        margin: const EdgeInsets.all(10.0),
      );
    } else {
      Get.closeAllSnackbars();
    }
  }
}
