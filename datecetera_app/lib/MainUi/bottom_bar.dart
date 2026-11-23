import 'package:datecetera_app/config/app_colors.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  int selectedIndex;
  Function(int) onItemTapped;
  BottomBar({super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {


  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        // Removes the ripple effect
        splashFactory: NoSplash.splashFactory,
        // Removes the grey highlight when tapping/holding
        highlightColor: Colors.transparent,
        // Optional: removes the hover color (for web/desktop)
        hoverColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        currentIndex: widget.selectedIndex,
        iconSize: 20,
        selectedLabelStyle: TextStyle(height: 3, fontSize: 10),
        unselectedLabelStyle: TextStyle(fontSize: 10, height: 3),
        type: BottomNavigationBarType.fixed,

        selectedItemColor: AppColors.onBoardingTileBorder,
        unselectedItemColor: Colors.grey,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Matches'),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: 'Planner',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
            label: 'Messages',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: widget.onItemTapped,
      ),
    );
  }
}
