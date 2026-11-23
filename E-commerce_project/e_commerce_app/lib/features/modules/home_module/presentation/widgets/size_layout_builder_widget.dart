import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/controller/product_detail_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeLayoutBuilderWidget extends StatelessWidget {
  const new({super.key, required this.controller});

  final ProductDetailScreenController controller;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double spacing = 4.w;

        final double circleSize = (constraints.maxWidth - (spacing * 30)) / 5;

        return Row(
          mainAxisAlignment: MainAxisAlignment.start,

          children: controller.sizes.map((sizeName) {
            final bool selected = controller.selectedSize == sizeName;

            return GestureDetector(
              onTap: () {
                controller.selectSize(sizeName);
              },

              child: Container(
                margin: EdgeInsets.only(right: spacing),
                height: circleSize,
                width: circleSize,

                decoration: BoxDecoration(
                  shape: BoxShape.circle,

                  color: selected ? AppColors.black1 : AppColors.white1,

                  border: Border.all(
                    color: selected ? AppColors.black1 : Colors.grey.shade300,

                    width: 1.5,
                  ),
                ),

                alignment: Alignment.center,

                child: Text(
                  sizeName,

                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,

                    color: selected ? AppColors.white1 : Colors.grey.shade700,
                  ),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
