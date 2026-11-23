import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:flutter/material.dart';

class NotificationsectionPersondetailsWidget extends StatelessWidget {
  const NotificationsectionPersondetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 350,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    AppAssets.imgNotificationProfilePick,
                    height: 60,
                    width: 60,
                  ),
                ),
                SizedBox(width: 15),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ketty like your photo',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '15 min ago',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.questionDesc,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
