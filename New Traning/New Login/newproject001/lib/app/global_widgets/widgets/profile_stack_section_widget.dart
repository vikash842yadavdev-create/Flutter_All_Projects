import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject001/app/Core/utils/app_colors.dart';
import 'package:newproject001/app/Core/utils/app_textstyle.dart';
import 'package:newproject001/app/global_widgets/widgets/back_widget.dart';

class ProfileStackSectionWidget extends StatelessWidget {
  const ProfileStackSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(width: double.infinity, height: 250.h, color: Colors.white),
        Container(
          width: double.infinity,
          height: 200.h,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(200.0, 100.0),
              bottomRight: Radius.elliptical(200.0, 100.0),
            ),
          ),
        ),
        Positioned(
          top: 35.h,
          left: 16.w,

          child: BackWidget(color: Colors.white),
        ),
        Positioned(
          top: 70.h,
          left: 80.w,
          child: Text(
            'Vikash Yadav',
            style: AppTextstyle.playfair(
              fontSize: 32,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          left: 125.w,
          top: 145.h,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.white),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Container(
              height: 90.h,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100.r)),
                color: Colors.white,
                border: Border.all(width: 2, color: AppColors.primary),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image(
                  image: AssetImage('assets/images/33.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
