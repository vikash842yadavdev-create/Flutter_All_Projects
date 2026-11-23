import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofileallsectionswidgets/myprofilesettingsectionwidgets/notificationsection_persondetails_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofileallsectionswidgets/myprofilesettingsectionwidgets/upperappbar_widget.dart';
import 'package:flutter/material.dart';

class MyprofileNotificationsectionScreen extends StatefulWidget {
  const MyprofileNotificationsectionScreen({super.key});

  @override
  State<MyprofileNotificationsectionScreen> createState() =>
      _MyprofileNotificationsectionScreenState();
}

class _MyprofileNotificationsectionScreenState
    extends State<MyprofileNotificationsectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UpperappbarWidget(
                title: 'Notification',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 20),


              Text(
                'Today, 10 April 2026',
                style: TextStyle(color: AppColors.questionDesc, fontSize: 16),
              ),
              SizedBox(height: 10,),
              NotificationsectionPersondetailsWidget(),
              NotificationsectionPersondetailsWidget(),
                 Text(
                'Yesterday',
                style: TextStyle(color: AppColors.questionDesc, fontSize: 16),
              ),
              SizedBox(height: 10),

              NotificationsectionPersondetailsWidget(),
              NotificationsectionPersondetailsWidget(),
              NotificationsectionPersondetailsWidget(),
              NotificationsectionPersondetailsWidget(),

            ],
          ),
        ),
      ),
    );
  }
}
