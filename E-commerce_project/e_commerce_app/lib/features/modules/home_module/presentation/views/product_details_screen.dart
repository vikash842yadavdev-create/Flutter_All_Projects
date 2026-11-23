import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/controller/product_detail_screen_controller.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/widgets/size_layout_builder_widget.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/controller/favourites_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductDetailScreenController>(
      builder: (controller) {
        final product = controller.product;

        return Scaffold(
          backgroundColor: AppColors.white1,
          body: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: MediaQuery.of(context).size.height * 0.52,
                child: Container(
                  color: AppColors.imageBg2,
                  child: PageView.builder(
                    controller: controller.pageController,
                    itemCount: product.images.length,
                    onPageChanged: controller.changeImage,
                    itemBuilder: (context, index) {
                      return Image.network(
                        product.images[index],
                        fit: BoxFit.contain,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          }

                          return const Center(
                            child: CircularProgressIndicator(strokeWidth: 2),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Icon(
                              Icons.image_not_supported_outlined,
                              size: 50,
                              color: Colors.grey,
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),

              Positioned(
                top: 40.h,
                left: 16.w,
                child: _circleButton(
                  bgColor: AppColors.black1,
                  iconColor: AppColors.white1,
                  icon: Icons.arrow_back_ios_new_rounded,
                  onTap: Get.back,
                ),
              ),

              Positioned(
                top: 40.h,
                right: 16.w,
                child: _circleButton(
                  bgColor: AppColors.white1,
                  iconColor: AppColors.black1,
                  icon: Icons.shopping_bag_outlined,
                  onTap: () {},
                ),
              ),

              Positioned(
                top: 275.h,
                right: 16.w,
                child: GetBuilder<FavouritesScreenController>(
                  builder: (favouriteController) {
                    final bool isFavourite = favouriteController.isFavourite(
                      product,
                    );

                    return _circleButton(
                      bgColor: AppColors.white1,
                      iconColor: isFavourite ? Colors.red : AppColors.black1,
                      icon: isFavourite
                          ? Icons.favorite
                          : Icons.favorite_outline,
                      onTap: () {
                        favouriteController.toggleFavourite(product);
                      },
                    );
                  },
                ),
              ),

              Positioned(
                top: 310.h,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(product.images.length, (index) {
                    final bool isSelected =
                        controller.currentImageIndex == index;

                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      height: 8.h,
                      width: isSelected ? 24.w : 8.w,
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.black : Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    );
                  }),
                ),
              ),

              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                height: MediaQuery.of(context).size.height * 0.53,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 24.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white1,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(38.r),
                      topRight: Radius.circular(38.r),
                    ),
                  ),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.brand ?? product.title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.black1,
                                    ),
                                  ),
                                  SizedBox(height: 3.h),
                                  Text(
                                    product.title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                  SizedBox(height: 4.h),
                                  Row(
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: List.generate(
                                          5,
                                          (index) => Icon(
                                            Icons.star_rounded,
                                            color: Colors.orange,
                                            size: 10.sp,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 4.w),
                                      Flexible(
                                        child: Text(
                                          '(${product.rating} Review)',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 30.h,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.w,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.imageBg2,
                                    borderRadius: BorderRadius.circular(30.r),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      GestureDetector(
                                        onTap: controller.decreaseQuantity,
                                        child: Text(
                                          '-',
                                          style: GoogleFonts.poppins(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 16.w),
                                      Text(
                                        '${controller.quantity}',
                                        style: GoogleFonts.poppins(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(width: 16.w),
                                      GestureDetector(
                                        onTap: controller.increaseQuantity,
                                        child: Text(
                                          '+',
                                          style: GoogleFonts.poppins(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  product.stock != null && product.stock! > 0
                                      ? 'Available in stock'
                                      : 'Out of stock',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 16.h),

                        Text(
                          'Size',
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        SizedBox(height: 8.h),

                        SizeLayoutBuilderWidget(controller: controller),

                        SizedBox(height: 22.h),

                        Text(
                          'Description',
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        SizedBox(height: 8.h),

                        Text(
                          product.description,
                          style: GoogleFonts.poppins(
                            fontSize: 10.sp,
                            height: 1.55,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600,
                          ),
                        ),

                        SizedBox(height: 25.h),

                        Container(
                          height: 50.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.black1,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(16.w),
                                child: Text(
                                  '\$${(product.price * controller.quantity).toStringAsFixed(2)}',
                                  style: GoogleFonts.poppins(
                                    color: AppColors.white1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: controller.addProductToCart,
                                child: Container(
                                  margin: EdgeInsets.only(right: 12.w),
                                  height: 38.h,
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.white1,
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.shopping_bag_outlined,
                                        color: AppColors.black1,
                                        size: 20.sp,
                                      ),
                                      SizedBox(width: 8.w),
                                      Text(
                                        'Add to cart',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.sp,
                                          color: AppColors.black1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 10.h),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _circleButton({
    required IconData icon,
    required VoidCallback onTap,
    required Color iconColor,
    required Color bgColor,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 30.w,
        width: 30.w,
        decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
        child: Icon(icon, color: iconColor, size: 12.sp),
      ),
    );
  }
}
