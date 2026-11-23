import 'package:flutter/material.dart';
import 'package:get_x/get.dart';

void DialougeBox(String title, String massage) {
  Get.defaultDialog(
    title: title,
    middleText: massage,
    backgroundColor: Colors.white,
    titleStyle: const TextStyle(color: Colors.black, fontSize: 20),
    middleTextStyle: const TextStyle(color: Colors.black, fontSize: 16),
    radius: 10.0,
    contentPadding: const EdgeInsets.all(16.0),
    actions: [
      ElevatedButton(
        onPressed: () {
          Get.back(); // Dismiss the dialog
        },
        child: const Text("Cancel", style: TextStyle(color: Colors.blue)),
      ),
      ElevatedButton(
        onPressed: () {
          print('Hello Vikash');
          Get.back(); // Dismiss the dialog
        },
        child: const Text("OK", style: TextStyle(color: Colors.blue)),
      ),
    ],
  );
}
