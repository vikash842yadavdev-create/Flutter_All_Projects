import 'package:e_commerce_app/features/config/routes/app_routes.dart';
import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:e_commerce_app/features/modules/common_widgets/app_bar_widget.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/controller/home_screen_controller.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/widgets/catagory_chip.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/widgets/home_product_card.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/widgets/home_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeScreenController controller = Get.find<HomeScreenController>();

    return Scaffold(
      backgroundColor: AppColors.white1,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12.h),

                // Top Bar
                AppBarWidget(
                  isSearch: true,
                  leadingIcon: Icons.menu,
                  tralingIcon: Icons.person,
                  isBackground: true,
                  onTap1: () {},
                  onTap2: () {
                    Get.toNamed(AppRoutes.personalDetailsScreen);
                  },
                ),

                SizedBox(height: 16.h),

                // Welcome
                Text(
                  'Welcome,',
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    height: 1.1,
                  ),
                ),

                SizedBox(height: 3.h),

                Text(
                  'Our Fashion App',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600,
                  ),
                ),

                SizedBox(height: 16.h),

                // Search
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search...',
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              color: Colors.grey.shade500,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 16.sp,
                              color: Colors.black,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 14.w),
                    Container(
                      height: 40.w,
                      width: 40.w,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.tune, color: Colors.white, size: 16.sp),
                    ),
                  ],
                ),

                SizedBox(height: 16.h),

                // Featured Product
                Container(
                  width: double.infinity,
                  height: 100.h,
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.07),
                        blurRadius: 16.r,
                        offset: Offset(0, 7.h),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: double.infinity,
                        width: 90.w,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.r),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1542291026-7eec264c27ff',
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Icon(
                                Icons.shopping_bag_outlined,
                                size: 45.sp,
                              );
                            },
                          ),
                        ),
                      ),

                      SizedBox(width: 15.w),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Axel Arigato',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              'Clean 90 Triple Sneakers',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                                fontSize: 10.sp,
                                color: Colors.grey.shade600,
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              '\$245.00',
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 8.w),

                      Container(
                        height: 35.w,
                        width: 35.w,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 24.h),

                // Categories Header
                HomeRowWidget(
                  title1: 'Categories',
                  title2: 'View All',
                  onTap: () {
                    controller.gotoCategories();
                  },
                ),

                SizedBox(height: 12.h),

                // Categories
                GetBuilder<HomeScreenController>(
                  builder: (controller) {
                    return SizedBox(
                      height: 30.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: controller.categories.length,
                        itemBuilder: (context, index) {
                          final category = controller.categories[index];

                          return CategoryChip(
                            title: category,
                            selected: controller.selectedCategory == category,
                            onTap: () {
                              controller.selectCategory(category);
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
                SizedBox(height: 24.h),

                // Top Dresses Header
                GetBuilder<HomeScreenController>(
                  builder: (controller) {
                    return HomeRowWidget(
                      title1: 'Top ${controller.selectedCategory}',
                      title2: 'View All',
                    );
                  },
                ),

                SizedBox(height: 16.h),

                // Products
                GetBuilder<HomeScreenController>(
                  builder: (controller) {
                    final products = controller.selectedProducts;

                    if (products.isEmpty) {
                      return SizedBox(
                        height: 200.h,
                        child: const Center(child: CircularProgressIndicator()),
                      );
                    }

                    return SizedBox(
                      height: 210.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          final product = products[index];

                          return Padding(
                            padding: EdgeInsets.only(right: 15.w),
                            child: HomeProductCard(product: product),
                          );
                        },
                      ),
                    );
                  },
                ),

                SizedBox(height: 25.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
