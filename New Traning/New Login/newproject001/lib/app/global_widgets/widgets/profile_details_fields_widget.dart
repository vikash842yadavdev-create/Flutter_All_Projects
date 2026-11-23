import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject001/app/Core/utils/app_textstyle.dart';
import 'package:newproject001/app/global_widgets/widgets/profileTiles_widget.dart';

class ProfileDetailsFieldsWidget extends StatelessWidget {
  ProfileDetailsFieldsWidget({
    super.key,
    required this.title,
    required this.description,
    required this.check,
    required this.small,
    this.trallingIcon,
  });
  final String description;
  final String title;
  final bool check;
  final bool small;
  final IconData? trallingIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            title,
            style: AppTextstyle.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ),
        SizedBox(height: 4.h),
        ProfiletilesWidget(
          title: description,
          traling: trallingIcon == null ? Icons.edit : trallingIcon,
          check: check,
          small: small,
        ),
      ],
    );
  }
}
