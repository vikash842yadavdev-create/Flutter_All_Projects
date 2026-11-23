import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/card_swiper_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/home_header_widget.dart';
import 'package:datecetera_app/widgets/onboarding_three_icon_widget.dart';
import 'package:flutter/material.dart';

class BottomBarExample extends StatefulWidget {
  const BottomBarExample({super.key});

  @override
  State<BottomBarExample> createState() => _BottomBarExampleState();
}

class _BottomBarExampleState extends State<BottomBarExample> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
        child: Column(
          children: [
            HomeHeaderWidget(),
            SizedBox(height: 15),
            Expanded(
              child: Container(child: Stack(
                clipBehavior: Clip.none,
                children: [CardSwiperWidget(),
              Positioned(
                left: 40,
                bottom: -40,
                child: OnboardingThreeIconWidget()),


              ])),
            ),
          ],
        ),
      ),

      Container(color: Colors.green, child: Text('2')),
      Container(color: Colors.blue, child: Text('3')),
      Container(color: Colors.yellow, child: Text('4')),
      Container(color: Colors.orange, child: Text('5')),
      Container(color: Colors.purple, child: Text('6')),
    ];

    return Scaffold(

      body: Center(
        child: pages[selectedIndex],
      ),

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // Removes the ripple effect
          splashFactory: NoSplash.splashFactory,
          // Removes the grey highlight when tapping/holding
          highlightColor: Colors.transparent,
          // Optional: removes the hover color (for web/desktop)
          hoverColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
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
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
