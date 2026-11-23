import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterfirebasenew/features/config/themes/app_colors.dart';
import 'package:flutterfirebasenew/features/modules/home_module/presentation/controller/firestore_view_controller.dart';
import 'package:flutterfirebasenew/features/modules/home_module/presentation/views/firestore_data_view.dart';
import 'package:get/get.dart';

class FirestoreView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final FirestoreViewController controller =
        Get.find<FirestoreViewController>();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('FireStore View', style: TextStyle(fontSize: 32)),
            SizedBox(height: 30.h),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5),
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: TextField(
                maxLines: 4,
                controller: controller.postController,
                decoration: InputDecoration(
                  hintText: 'What is you think?',
                  hintStyle: TextStyle(color: AppColors.text1),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(width: 1.5, color: AppColors.black1),
                  color: AppColors.text1.shade100,
                ),
                child: InkWell(
                  onTap: () {
                    controller.addData(
                      description: controller.postController.text,
                    );
                  },
                  child: Center(
                    child: Text(
                      'Add',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(width: 1.5, color: AppColors.black1),
                  color: AppColors.text1.shade100,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FirestoreDataView(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      'Go to data',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(width: 1.5, color: AppColors.black1),
                  color: AppColors.text1.shade100,
                ),
                child: InkWell(
                  onTap: () {
                    controller.backToHome();
                  },
                  child: Center(
                    child: Text(
                      'Back to Home',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
