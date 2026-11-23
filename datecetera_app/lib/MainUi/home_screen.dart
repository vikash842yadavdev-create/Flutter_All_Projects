import 'package:datecetera_app/widgets/mainuiwidgets/home_header_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/card_swiper_widget.dart';
import 'package:datecetera_app/widgets/onboarding_three_icon_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
        child: Column(
          children: [
            HomeHeaderWidget(),
            SizedBox(height: 15),
            Expanded(
              child: Container(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CardSwiperWidget(),
                    Positioned(
                      left: 40,
                      bottom: -40,
                      child: OnboardingThreeIconWidget(),
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
