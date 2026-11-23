import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:e_commerce_app/features/modules/common_widgets/app_bar_widget.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/controller/all_product_screen_controller.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/widgets/productcard_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white1,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(height: 12.h),

              AppBarWidget(
                isSearch: true,
                leadingIcon: Icons.arrow_back,
                tralingIcon: Icons.search,
                isBackground: true,
                onTap1: () {
                  Get.back();
                },
              ),

              SizedBox(height: 16.h),

              GetBuilder<AllProductScreenController>(
                builder: (controller) {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      controller.categoryName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  );
                },
              ),

              SizedBox(height: 12.h),

              Expanded(
                child: GetBuilder<AllProductScreenController>(
                  builder: (controller) {
                    if (controller.isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (controller.allProductList.isEmpty) {
                      return Center(
                        child: Text(
                          'No products found',
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      );
                    }
                    return GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: controller.allProductList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12.w,
                        mainAxisSpacing: 16.h,
                        childAspectRatio: 0.60,
                      ),
                      itemBuilder: (context, index) {
                        final product = controller.allProductList[index];

                        return GestureDetector(
                          onTap: () {
                            controller.gotoProductDetailsScreen(product);
                          },
                          child: ProductcardWidget(
                            image: product.thumbnail,
                            title: product.brand ?? product.title,
                            description: product.title,
                            price: product.price,
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
