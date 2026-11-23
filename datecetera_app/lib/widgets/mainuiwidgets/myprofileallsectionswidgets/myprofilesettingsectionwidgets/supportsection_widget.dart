import 'package:datecetera_app/MainUi/myprofileallsectionsscreen/myprofile_settingsection_helpandsupport_screen.dart';
import 'package:datecetera_app/MainUi/myprofileallsectionsscreen/myprofile_settingsection_privacypolicysection_screen.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:flutter/material.dart';

class SupportsectionWidget extends StatelessWidget {
  const SupportsectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 348,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Support',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      MyprofileSettingsectionPrivacypolicysectionScreen(),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 70,
              width: 348,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.privacy_tip_outlined,
                    size: 17,
                    color: AppColors.onBoardingTileBorder,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Privacy Policy',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      MyprofileSettingsectionHelpandsupportScreen(),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 70,
              width: 348,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.mail_outlined,
                    size: 17,
                    color: AppColors.onBoardingTileBorder,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Email: support@datecetera.com',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
