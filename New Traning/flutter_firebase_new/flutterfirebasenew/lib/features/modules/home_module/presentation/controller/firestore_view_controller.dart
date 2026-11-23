import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterfirebasenew/features/config/routes/app_routes.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class FirestoreViewController extends GetxController {
  final TextEditingController postController = TextEditingController();
  final fireStore = FirebaseFirestore.instance.collection('user');
  final TextEditingController editTextController = TextEditingController();

  void addData({required String description}) {
    try {
      String id = DateTime.now().millisecondsSinceEpoch.toString();

      fireStore.doc(id).set({'id': id, 'title': description});

      Get.snackbar('Success', 'Data added successfully');
    } on FirebaseException catch (e) {
      Get.snackbar('Error', 'Something went wrong');
      debugPrint(e.toString());
    }
  }

  Future<void> showMyDialog(
    BuildContext context, {
    required String title,
    required String id,
  }) async {
    editTextController.text = title;

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
          title: Text(
            'Update',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
          ),
          content: TextField(
            controller: editTextController,
            maxLines: 3,
            decoration: InputDecoration(
              hintText: 'Enter description',
              filled: true,
              fillColor: Colors.grey.shade100,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),

            ElevatedButton(
              onPressed: () {
                try {
                  fireStore.doc(id).update({
                    'title': editTextController.text.toString(),
                  });
                  Navigator.pop(context);
                  Get.snackbar('Success', 'Update Successfully');
                } on FirebaseException catch (e) {
                  Get.snackbar('Error', 'Something Went Wrong');
                  debugPrint(e.toString());
                }
              },
              child: const Text('Update'),
            ),
          ],
        );
      },
    );
  }

  backToHome() {
    Get.toNamed(AppRoutes.homeView);
  }
}
