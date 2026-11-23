import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductcardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final dynamic price;

  const ProductcardWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150.h,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.text1.shade200,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.network(
                  image,
                  fit: BoxFit.cover,

                  // Loading
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }

                    return const Center(
                      child: CircularProgressIndicator(strokeWidth: 2),
                    );
                  },

                  // Error
                  errorBuilder: (context, error, stackTrace) {
                    return const Center(
                      child: Icon(
                        Icons.image_not_supported_outlined,
                        size: 40,
                        color: Colors.grey,
                      ),
                    );
                  },
                ),
              ),

              Positioned(
                top: 8.h,
                right: 12.w,
                child: Container(
                  height: 22.h,
                  width: 22.w,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.favorite_border_rounded,
                    color: AppColors.white1,
                    size: 12,
                  ),
                ),
              ),
            ],
          ),
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
                color: AppColors.black1,
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
            ),

            SizedBox(height: 2.h),

            Text(
              description,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
                color: Colors.grey.shade600,
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(height: 5.h),

            Text(
              '\$${price.toStringAsFixed(2)}',
              style: GoogleFonts.poppins(
                color: AppColors.black1,
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
