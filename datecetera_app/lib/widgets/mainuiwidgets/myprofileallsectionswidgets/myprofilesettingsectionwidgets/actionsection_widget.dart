import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/popupscreens/popup_deleteaccount_screen.dart';
import 'package:datecetera_app/popupscreens/popup_logout_screen.dart';
import 'package:flutter/material.dart';

class ActionsectionWidget extends StatelessWidget {
  const ActionsectionWidget({super.key});

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
            'Actions',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PopupLogoutScreen()),
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
                    Icons.logout_outlined,
                    size: 17,
                    color: AppColors.onBoardingTileBorder,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Log Out',
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
                MaterialPageRoute(builder: (context) => PopupDeleteaccountScreen()),
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
                    Icons.delete_outline,
                    size: 17,
                    color: AppColors.onBoardingTileBorder,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Delete Account',
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
