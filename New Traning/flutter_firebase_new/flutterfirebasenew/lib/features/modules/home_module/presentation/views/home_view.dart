import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterfirebasenew/features/config/themes/app_colors.dart';
import 'package:flutterfirebasenew/features/modules/home_module/presentation/controller/home_view_controller.dart';
import 'package:flutterfirebasenew/features/modules/home_module/presentation/views/post_add_view.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class HomeView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeViewController controller = Get.find<HomeViewController>();
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Home View', style: TextStyle(fontSize: 32)),
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
                    onTap: () async {
                      await controller.addData(
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
                          builder: (context) => const PostAddView(),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        'Go to Posts',
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
                    onTap: () async {
                      await controller.logout();
                    },
                    child: Center(
                      child: Text(
                        'Logout',
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
                      controller.goToFireStore();
                    },
                    child: Center(
                      child: Text(
                        'Got to FireStore',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 80.h,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Lottie.asset(
                  'assets/CARVEXA_black_quick_pop.json',
                  repeat: false,
                ),
              ),
              Container(
                height: 80.h,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.black),
                child: Lottie.asset('assets/CARVEXA_white_quick_pop.json'),
              ),
              

              Container(
                height: 80.h,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Lottie.asset('assets/car_loading_black.json'),
              ),
              Container(
                height: 80.h,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.black),
                child: Lottie.asset('assets/car_loading_white.json'),
              ),

              Container(
                height: 80.h,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Lottie.asset('assets/loading.json'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// C:\Users\vikas\Desktop\New Traning\flutter_firebase_new\flutterfirebasenew\assets\CARVEXA_black_quick_pop.json
