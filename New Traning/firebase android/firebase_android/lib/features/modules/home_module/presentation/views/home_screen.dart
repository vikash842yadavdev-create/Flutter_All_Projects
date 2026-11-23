import 'package:firebase_android/features/config/routes/app_routes.dart';
import 'package:firebase_android/features/modules/home_module/presentation/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeScreenController controller = Get.find<HomeScreenController>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Screen'),
            SizedBox(height: 32.h),
            InkWell(
              onTap: () async {
                await controller.logout();
                Get.offAllNamed(AppRoutes.loginScreen);
              },
              child: Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Colors.grey.shade300,
                  border: Border.all(width: 1.5.h, color: Colors.grey.shade500),
                ),
                child: Center(
                  child: Text(
                    'Logout',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
