import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_x/get.dart';

class AppHelpers {
  static void showSnackBar({
    required String title,
    required String message,
    bool isError = false,
    Duration duration = const Duration(seconds: 3),
  }) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.top,
      backgroundColor: isError ? Colors.red.shade100 : Colors.green.shade100,
      icon: Icon(
        isError ? Icons.error : Icons.check_circle,
        color: isError ? Colors.red.shade100 : Colors.green.shade800,
      ),
      margin: const EdgeInsets.all(16),
      borderRadius: 8.r,
      duration: duration,
    );
  }

  static void showLoadingDialog({String message = 'Loading...'}) {
    Get.dialog(
      AlertDialog(
        content: Row(
          children: [
            const CircularProgressIndicator(),
            const SizedBox(width: 16),
            Text(message),
          ],
        ),
      ),
    );
  }
}
