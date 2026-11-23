import 'package:datecetera_app/MainUi/bottom_bar.dart';
import 'package:datecetera_app/MainUi/explore_screen.dart';
import 'package:datecetera_app/MainUi/home_screen.dart';
import 'package:datecetera_app/MainUi/matches_screen.dart';
import 'package:datecetera_app/MainUi/my_profile_screen.dart';
import 'package:flutter/material.dart';

class FirstHomeScreen extends StatefulWidget {
  const FirstHomeScreen({super.key});

  @override
  State<FirstHomeScreen> createState() => _FirstHomeScreenState();
}

class _FirstHomeScreenState extends State<FirstHomeScreen> {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      HomeScreen(),
      MatchesScreen(),
      ExploreScreen(),
      Container(color: Colors.orange, child: Text('5')),
      Container(color: Colors.purple, child: Text('6')),
      MyProfileScreen(),
    ];

    return Scaffold(
      body: pages[selectedIndex],

      bottomNavigationBar: BottomBar(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}
