import 'package:e_commerce_app/features/config/routes/app_routes.dart';
import 'package:e_commerce_app/features/data/models/product_model.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/controller/favourites_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeProductCard extends StatelessWidget {
  const HomeProductCard({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  Get.toNamed(
                    AppRoutes.productDetailsScreen,
                    arguments: product,
                  );
                },
                child: Container(
                  height: 150.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(22.r),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22.r),
                    child: Image.network(
                      product.thumbnail,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.image_not_supported_outlined,
                          size: 50,
                        );
                      },
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 10.h,
                right: 12.w,
                child: Container(
                  height: 30.w,
                  width: 30.w,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: GetBuilder<FavouritesScreenController>(
                    builder: (favouriteController) {
                      final isFavourite = favouriteController.isFavourite(
                        product,
                      );

                      return IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed: () {
                          favouriteController.toggleFavourite(product);
                        },
                        icon: Icon(
                          isFavourite ? Icons.favorite : Icons.favorite_border,
                          color: isFavourite ? Colors.red : Colors.white,
                          size: 16.sp,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 8.h),

          Text(
            product.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),

          SizedBox(height: 2.h),

          Text(
            '\$${product.price}',
            style: GoogleFonts.poppins(
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
