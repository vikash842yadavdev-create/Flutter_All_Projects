import 'package:e_commerce_app/features/data/models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class NotificationTile extends StatelessWidget {
  final NotificationModel notification;

  const NotificationTile({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipOval(
            child: Image.network(
              notification.imageUrl,
              width: 45.w,
              height: 45.w,
              fit: BoxFit.cover,

              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }

                return Container(
                  width: 45.w,
                  height: 45.w,
                  alignment: Alignment.center,
                  color: Colors.grey.shade200,
                  child: SizedBox(
                    width: 18.w,
                    height: 18.w,
                    child: const CircularProgressIndicator(strokeWidth: 2),
                  ),
                );
              },

              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 55.w,
                  height: 55.w,
                  color: Colors.grey.shade200,
                  child: Icon(Icons.person, size: 28.sp, color: Colors.grey),
                );
              },
            ),
          ),

          SizedBox(width: 16.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: notification.name,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),

                      TextSpan(
                        text: ' ${notification.message}',
                        style: TextStyle(
                          fontSize: 12.sp,
                          height: 1.35,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 7.h),

                Text(
                  notification.time,
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
