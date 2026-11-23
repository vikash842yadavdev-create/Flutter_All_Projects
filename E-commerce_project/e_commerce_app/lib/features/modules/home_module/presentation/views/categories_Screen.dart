import 'package:e_commerce_app/features/config/theme/app_colors.dart';

import 'package:e_commerce_app/features/modules/common_widgets/app_bar_widget.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/controller/categories_screen_controller.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/widgets/categorycard_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CategoriesScreenController controller =
        Get.find<CategoriesScreenController>();



    return Scaffold(
      backgroundColor: AppColors.white1,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.h),

              AppBarWidget(
                isSearch: false,
                leadingIcon: Icons.arrow_back,
                isBackground: false,
                onTap1: () {
                  Get.back();
                },
              ),

              SizedBox(height: 24.h),

              Container(
                height: 45.h,
                decoration: BoxDecoration(
                  color: AppColors.text1.shade100,
                  borderRadius: BorderRadius.circular(35.r),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search Categories',
                    hintStyle: TextStyle(
                      color: AppColors.text1.shade600,
                      fontSize: 12.sp,
                    ),
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: Colors.black,
                      size: 20.sp,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 12.h),
                  ),
                ),
              ),

              SizedBox(height: 32.h),

              Column(
                children: controller.categories.map((category) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 24.h),
                    child: GestureDetector(
                      onTap: () {
                        controller.goToProductScreen(
                          categoryEndPoint: category['categorie'] as String,
                          categoryName: category['title'] as String,
                        );
                      },
                      child: CategorycardWidget(
                        title: category['title'] as String,
                        products: category['products'] as String,
                        image: category['image'] as String,
                        textLeft: category['textLeft'] as bool,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
