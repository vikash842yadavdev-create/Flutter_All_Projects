import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:e_commerce_app/features/modules/cart_module/presentation/controller/cart_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white1,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: GetBuilder<CartScreenController>(
            builder: (controller) {
              final int totalItems = controller.cartList.fold(
                0,
                (sum, item) => sum + item.quantityCount,
              );

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.h),

                  Text(
                    'My Cart',
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black1,
                    ),
                  ),

                  SizedBox(height: 16.h),

                  Expanded(
                    child: controller.cartList.isEmpty
                        ? Center(
                            child: Text(
                              'Your cart is empty',
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.text1.shade700,
                              ),
                            ),
                          )
                        : ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: controller.cartList.length,
                            itemBuilder: (context, index) {
                              final product = controller.cartList[index];

                              return Dismissible(
                                key: ValueKey('${product.id}_$index'),
                                direction: DismissDirection.endToStart,
                                background: Container(
                                  margin: EdgeInsets.only(bottom: 14.h),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(18.r),
                                  ),
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(right: 25.w),
                                  child: Icon(
                                    Icons.delete_outline_rounded,
                                    color: Colors.white,
                                    size: 28.sp,
                                  ),
                                ),
                                onDismissed: (_) async {
                                  await controller.removeFromCart(index);
                                },
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 14.h),
                                  padding: EdgeInsets.all(12.w),
                                  decoration: BoxDecoration(
                                    color: AppColors.text1.shade100,
                                    borderRadius: BorderRadius.circular(18.r),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          14.r,
                                        ),
                                        child: Container(
                                          height: 82.w,
                                          width: 82.w,
                                          color: AppColors.imageBg2,
                                          child: Image.network(
                                            product.image,
                                            fit: BoxFit.cover,
                                            loadingBuilder:
                                                (
                                                  context,
                                                  child,
                                                  loadingProgress,
                                                ) {
                                                  if (loadingProgress == null) {
                                                    return child;
                                                  }

                                                  return const Center(
                                                    child:
                                                        CircularProgressIndicator(
                                                          strokeWidth: 2,
                                                        ),
                                                  );
                                                },
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                                  return const Center(
                                                    child: Icon(
                                                      Icons
                                                          .image_not_supported_outlined,
                                                      color: Colors.grey,
                                                    ),
                                                  );
                                                },
                                          ),
                                        ),
                                      ),

                                      SizedBox(width: 12.w),

                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              product.brandName,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.poppins(
                                                fontSize: 14.sp,
                                                color: AppColors.black1,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),

                                            SizedBox(height: 2.h),

                                            Text(
                                              product.itemName,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.poppins(
                                                fontSize: 10.sp,
                                                color: AppColors.text1.shade700,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),

                                            SizedBox(height: 12.h),

                                            Text(
                                              '\$${product.price.toStringAsFixed(2)}',
                                              style: GoogleFonts.poppins(
                                                fontSize: 14.sp,
                                                color: AppColors.black1,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      SizedBox(width: 8.w),

                                      Container(
                                        height: 32.h,
                                        decoration: BoxDecoration(
                                          color: AppColors.imageBg2,
                                          borderRadius: BorderRadius.circular(
                                            30.r,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            GestureDetector(
                                              onTap: () async {
                                                await controller
                                                    .decreaseQuantity(index);
                                              },
                                              child: Container(
                                                padding: EdgeInsets.only(
                                                  left: 8.h,
                                                ),
                                                // color: Colors.amber,

                                                height: double.infinity,
                                                width: 24.w,

                                                child: Icon(
                                                  Icons.remove,
                                                  size: 12.sp,
                                                  color: AppColors.black1,
                                                ),
                                              ),
                                            ),

                                            SizedBox(width: 10.w),

                                            Text(
                                              '${product.quantityCount}',
                                              style: GoogleFonts.poppins(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w600,
                                                color: AppColors.black1,
                                              ),
                                            ),

                                            SizedBox(width: 10.w),

                                            GestureDetector(
                                              onTap: () async {
                                                await controller
                                                    .increaseQuantity(index);
                                              },
                                              child: Container(
                                                padding: EdgeInsets.only(
                                                  right: 8.4,
                                                ),
                                                height: double.infinity,
                                                width: 24.w,
                                                // color: Colors.amber,

                                                child: Icon(
                                                  Icons.add,
                                                  size: 12.sp,
                                                  color: AppColors.black1,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey.shade200),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total ($totalItems Items)',
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                color: AppColors.text1.shade700,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '\$${controller.totalPrice.toStringAsFixed(2)}',
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                color: AppColors.black1,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 14.h),

                        Container(
                          height: 52.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.black1,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.w),
                                child: Text(
                                  'Proceed to Checkout',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.white1,
                                  ),
                                ),
                              ),

                              InkWell(
                                onTap: controller.cartList.isEmpty
                                    ? null
                                    : () {},
                                borderRadius: BorderRadius.circular(10.r),
                                child: Container(
                                  margin: EdgeInsets.only(right: 12.w),
                                  height: 40.w,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.white1,
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 8.h),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
