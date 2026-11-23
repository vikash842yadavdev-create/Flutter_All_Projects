import 'package:datecetera_app/MainUi/myprofileallsectionsscreen/myprofile_likessection_screen.dart';
import 'package:datecetera_app/MainUi/myprofileallsectionsscreen/myprofile_notificationsection_screen.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofile_row_widget.dart';
import 'package:flutter/material.dart';

class MyprofileGeneralsectionWidget extends StatefulWidget {
  const MyprofileGeneralsectionWidget({super.key});

  @override
  State<MyprofileGeneralsectionWidget> createState() =>
      _MyprofileGeneralsectionWidgetState();
}

class _MyprofileGeneralsectionWidgetState
    extends State<MyprofileGeneralsectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'General',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyprofileNotificationsectionScreen(),
                ),
              );
            },

            child: Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(10),
              height: 70,
              width: 348,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1), // Shadow color
                    spreadRadius: 3, // How much the shadow should expand
                    blurRadius: 5, // How blurry the shadow should be
                    offset: Offset(0, 4), // Changes position: (x, y)
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.notifications_outlined,
                    color: AppColors.onBoardingTileBorder,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Notification',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Container(
                    height: 20,
                    width: 26,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.onBoardingTileBorder,
                    ),
                    child: Center(
                      child: Text(
                        '2',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
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
                  builder: (context) => MyprofileLikessectionScreen(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(10),
              height: 70,
              width: 348,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1), // Shadow color
                    spreadRadius: 3, // How much the shadow should expand
                    blurRadius: 5, // How blurry the shadow should be
                    offset: Offset(0, 4), // Changes position: (x, y)
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite_outline,
                    color: AppColors.onBoardingTileBorder,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Likes',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Container(
                    height: 20,
                    width: 26,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.onBoardingTileBorder,
                    ),
                    child: Center(
                      child: Text(
                        '4',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
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
