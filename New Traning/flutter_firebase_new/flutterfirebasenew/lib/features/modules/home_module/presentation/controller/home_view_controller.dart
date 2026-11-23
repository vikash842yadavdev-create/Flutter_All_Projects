import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterfirebasenew/features/config/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController {
  final TextEditingController postController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final databaseRef = FirebaseDatabase.instance.ref('Posts');
  final TextEditingController searchController = TextEditingController();
  final TextEditingController editTextController = TextEditingController();

  goToFireStore() {
    Get.toNamed(AppRoutes.firestoreView);
  }

  Future<void> addData({required String description}) async {
    try {
      final idforData = DateTime.now().millisecondsSinceEpoch.toString();
      await databaseRef.child(idforData).set({
        'id': idforData,
        'description': description,
      });
      Get.snackbar('Success', 'Post Added');
      update();
    } on FirebaseException {
      Get.snackbar('Error', 'Something Went Wrong');
      update();
    } catch (e) {
      debugPrint('Logout error: $e');
      debugPrint(e.toString());
    }
  }

  Future<void> logout() async {
    try {
      await _auth.signOut();
      Get.toNamed(AppRoutes.loginView);
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error', 'Something Went Wrong');
      debugPrint('Logout error: ${e.code}');
      debugPrint(e.message);
    }
  }

  // Future<void> logout() async {
  //   await GoogleSignIn.instance.disconnect();
  //   FirebaseAuth.instance.signOut();
  // }

  // Future<void> showMyDialog(
  //   BuildContext context,
  //   String title,
  //   String id,
  // ) async {
  //   return showDialog<void>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       editTextController.text = title;
  //       return AlertDialog(
  //         title: Text('Update'),
  //         content: Container(
  //           height: 30.h,
  //           child: TextField(
  //             controller: editTextController,
  //             decoration: InputDecoration(),
  //           ),
  //         ),
  //         actions: [
  //           InkWell(
  //             onTap: () {
  //               Navigator.pop(context);
  //             },
  //             child: Container(child: Text('Cancle')),
  //           ),
  //           InkWell(
  //             onTap: () {
  //               Navigator.pop(context);
  //               try {
  //                 databaseRef.child(id).update({
  //                   'description': editTextController.text.toString(),
  //                 });
  //                 Get.snackbar('Success', 'Update successfully');
  //               } on FirebaseException catch (e) {
  //                 Get.snackbar('Error', 'Update Failed');
  //                 debugPrint(e.toString());
  //               }
  //             },
  //             child: Container(child: Text('Update')),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

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
              onPressed: () async {
                try {
                  await databaseRef.child(id).update({
                    'description': editTextController.text.trim(),
                  });

                  Navigator.pop(context);

                  Get.snackbar('Success', 'Updated successfully');
                } on FirebaseException catch (e) {
                  debugPrint(e.toString());

                  Get.snackbar('Error', 'Update failed');
                }
              },
              child: const Text('Update'),
            ),
          ],
        );
      },
    );
  }
}
