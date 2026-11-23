import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategorycardWidget extends StatelessWidget {
  final String title;
  final String products;
  final String image;
  final bool textLeft;
  final VoidCallback? onTap;

  CategorycardWidget({
    super.key,
    required this.title,
    required this.products,
    required this.image,
    required this.textLeft,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 110,
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: AppColors.white1,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            // Category Image
            Positioned.fill(child: Image.network(image, fit: BoxFit.cover)),

            // Gradient for text readability
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: textLeft
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    end: textLeft
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    colors: [
                      Colors.white.withOpacity(0.95),
                      Colors.white.withOpacity(0.60),
                      Colors.transparent,
                    ],
                    stops: const [0.0, 0.35, 0.75],
                  ),
                ),
              ),
            ),

            // Text
            Positioned(
              left: textLeft ? 20 : null,
              right: textLeft ? null : 20,
              top: 30.h,
              child: Column(
                crossAxisAlignment: textLeft
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  Text(
                    products,
                    style:  TextStyle(
                      color: Colors.black,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
