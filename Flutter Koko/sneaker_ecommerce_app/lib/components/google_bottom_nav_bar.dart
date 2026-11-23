import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GoogleBottomNavBar extends StatelessWidget {
 final  void Function(int)? onTabChange;
  const GoogleBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        color: Colors.grey.shade400,
        activeColor: Colors.grey[700],
        tabBackgroundColor: Colors.grey.shade100,
        tabActiveBorder: Border.all(color: Colors.white),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(icon: Icons.shop, text: 'Shop'),
          GButton(icon: Icons.shopping_bag_rounded, text: 'Cart'),
        ],
      ),
    );
  }
}
