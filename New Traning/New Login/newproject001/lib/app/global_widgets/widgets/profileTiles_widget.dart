import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject001/app/Core/utils/app_textstyle.dart';

class ProfiletilesWidget extends StatelessWidget {
  ProfiletilesWidget({
    super.key,
    this.leading,
    this.traling,
    required this.title,
    this.onTap,
    this.check = true,
    this.small = true,
  });
  final String title;
  final IconData? leading;
  final IconData? traling;
  final VoidCallback? onTap;
  final bool check;
  final bool small;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        height: 52.h,
        width: small ? double.infinity : 160.w,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              spreadRadius: 0.5,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
          border: Border(
            bottom: BorderSide(width: 1, color: Colors.grey.shade300),
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    if (check) ...[Icon(leading), SizedBox(width: 32.w)],

                    Expanded(
                      child: Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        style: AppTextstyle.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              InkWell(onTap: onTap, child: Icon(traling)),
            ],
          ),
        ),
      ),
    );
  }
}
