import 'package:flutter/material.dart';
import 'package:get_x/get.dart';

void snMassage(String massage) {
  Get.snackbar(
    "SnackBar",
    massage,
    snackPosition: SnackPosition.bottom,
    backgroundColor: Colors.blue,
    duration: const Duration(seconds: 2),
    animationDuration: const Duration(milliseconds: 500),
    padding: const EdgeInsets.all(16.0),
    margin: const EdgeInsets.all(16.0),
    borderColor: Colors.black,
    borderWidth: massage.isNotEmpty ? 2.0 : 0.0,
    borderRadius: 40,
    icon: const Icon(Icons.info, color: Colors.white),
    dismissDirection: DismissDirection.horizontal,
    forwardAnimationCurve: Curves.easeInOut,
    mainButton: TextButton(
      onPressed: () {
        Get.back(); // Dismiss the snackbar
      },
      child: const Text("Dismiss", style: TextStyle(color: Colors.white)),
    ),
  );
}
