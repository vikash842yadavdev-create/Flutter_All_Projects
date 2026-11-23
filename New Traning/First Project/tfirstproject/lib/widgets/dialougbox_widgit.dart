import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showResultDialog(String title, double content) {
  Get.defaultDialog(
    title: title,
    titleStyle: TextStyle(color: Colors.white),
    content: Text(
      'Result: $content',
      style: TextStyle(color: Colors.white),
    ),
    backgroundColor: Colors.black.withValues(alpha: 0.2),
    radius: 30,
    cancel: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white.withValues(alpha: 0.4),
      ),
      onPressed: () {
        Get.back();
      },
      child: const Text('Close'),
    ),
  );
}
