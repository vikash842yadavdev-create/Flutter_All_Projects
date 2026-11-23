import 'package:e_commerce_app/features/data/models/notification_model.dart';
import 'package:e_commerce_app/features/modules/notification_module/presentation/widgets/notification_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int selectedIndex = 2;

  final List<NotificationModel> notifications = [
    const NotificationModel(
      name: 'Kristine Jones',
      message: 'It is a long established fact that a reader will be distracted by the readable content of a page.',
      time: '2 hours ago',
      imageUrl: 'https://randomuser.me/api/portraits/men/32.jpg',
    ),
    const NotificationModel(
      name: 'Kay Hicks',
      message:
          'There are many variations of passages of Lorem Ipsum available.',
      time: '2 hours ago',
      imageUrl: 'https://randomuser.me/api/portraits/men/75.jpg',
    ),
    const NotificationModel(
      name: 'Cheryl Moretti',
      message: 'If you are going to use a passage of Lorem Ipsum, you need to be sure there isn’t anything embarrassing.',
      time: '6 hours ago',
      imageUrl: 'https://randomuser.me/api/portraits/women/44.jpg',
    ),
    const NotificationModel(
      name: 'Cheryl Moretti',
      message: 'If you are going to use a passage of Lorem Ipsum, you need to be sure there isn’t anything embarrassing.',
      time: '1 day ago',
      imageUrl: 'https://randomuser.me/api/portraits/men/46.jpg',
    ),
    const NotificationModel(
      name: 'Kristine Jones',
      message: 'It is a long established fact that a reader will be distracted by the readable content of a page.',
      time: '2 hours ago',
      imageUrl: 'https://randomuser.me/api/portraits/men/32.jpg',
    ),
    const NotificationModel(
      name: 'Kay Hicks',
      message:
          'There are many variations of passages of Lorem Ipsum available.',
      time: '2 hours ago',
      imageUrl: 'https://randomuser.me/api/portraits/men/75.jpg',
    ),
    const NotificationModel(
      name: 'Cheryl Moretti',
      message: 'If you are going to use a passage of Lorem Ipsum, you need to be sure there isn’t anything embarrassing.',
      time: '6 hours ago',
      imageUrl: 'https://randomuser.me/api/portraits/women/44.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 12.h),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Notification',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),

                    SizedBox(height: 12.h),

                    Expanded(
                      child: ListView.separated(
                        padding: EdgeInsets.only(bottom: 20.h),
                        physics: const BouncingScrollPhysics(),
                        itemCount: notifications.length,
                        separatorBuilder: (context, index) {
                          return Divider(
                            height: 1.h,
                            thickness: 1,
                            color: Colors.grey.shade300,
                          );
                        },
                        itemBuilder: (context, index) {
                          final notification = notifications[index];

                          return NotificationTile(notification: notification);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
