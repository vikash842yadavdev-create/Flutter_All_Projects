import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/controller/favourites_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavouritesScreenController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.white1,

          appBar: AppBar(
            title: Text(
              'My Favourites',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            backgroundColor: AppColors.white1,
            elevation: 0,
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
          ),

          body: controller.favouriteProducts.isEmpty
              ? _emptyFavourite()
              : ListView.builder(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 20.h,
                  ),
                  physics: const BouncingScrollPhysics(),
                  itemCount: controller.favouriteProducts.length,
                  itemBuilder: (context, index) {
                    final product =
                        controller.favouriteProducts[index];

                    return _favouriteCard(
                      controller: controller,
                      index: index,
                      product: product,
                    );
                  },
                ),
        );
      },
    );
  }

  Widget _favouriteCard({
    required FavouritesScreenController controller,
    required int index,
    required dynamic product,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 14.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Image.network(
              product.thumbnail,
              width: 80.w,
              height: 90.h,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 80.w,
                  height: 90.h,
                  color: Colors.grey.shade100,
                  child: Icon(
                    Icons.image_not_supported_outlined,
                    color: Colors.grey,
                    size: 24.sp,
                  ),
                );
              },
            ),
          ),

          SizedBox(width: 14.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 8.h),

                Text(
                  '\$${product.price}',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          IconButton(
            onPressed: () {
              controller.removeFavourite(product);
            },
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 22.sp,
            ),
          ),
        ],
      ),
    );
  }

  Widget _emptyFavourite() {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite_border_rounded,
              size: 60.sp,
              color: Colors.grey,
            ),

            SizedBox(height: 16.h),

            Text(
              'No Favourites Yet',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 8.h),

            Text(
              'Products you add to your favourites will appear here.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13.sp,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
