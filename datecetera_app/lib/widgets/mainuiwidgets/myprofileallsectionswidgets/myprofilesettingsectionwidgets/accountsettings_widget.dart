import 'package:datecetera_app/config/app_colors.dart';
import 'package:flutter/material.dart';

class AccountsettingsWidget extends StatefulWidget {
  final VoidCallback onTap;

  const AccountsettingsWidget({super.key, required this.onTap});

  @override
  State<AccountsettingsWidget> createState() => _AccountsettingsWidgetState();
}

class _AccountsettingsWidgetState extends State<AccountsettingsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 348,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Account Settings',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              InkWell(
                onTap: widget.onTap,
                child: Icon(Icons.edit_outlined, size: 20),
              ),
            ],
          ),

          Container(
            padding: EdgeInsets.all(10),
            height: 60,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Phone Number',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  '+91-98765-4321',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            height: 60,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Email',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  'dummy123@gmail.com',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 104,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Location', style: TextStyle(fontSize: 16)),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: AppColors.onBoardingTileBorder,
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Text('Los Angeles, CA', style: TextStyle(fontSize: 16)),
                  ],
                ),
                Text(
                  'Add a new location',
                  style: TextStyle(
                    color: AppColors.onBoardingTileBorder,
                    fontSize: 14,
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
