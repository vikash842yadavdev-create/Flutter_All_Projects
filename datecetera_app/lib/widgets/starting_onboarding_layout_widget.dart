
import 'package:datecetera_app/config/app_colors.dart';
import 'package:flutter/material.dart';

class StartingOnboardingLayout extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final Widget nextScreen;

  const StartingOnboardingLayout({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.nextScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.stBgmGradientStart, AppColors.stBgmGradientEnd],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(image),
              Image.asset(text1),
              Image.asset(text2),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => nextScreen),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(18),
                  backgroundColor: AppColors.white,
                ),
                child: const Icon(
                  Icons.arrow_forward,
                  color: AppColors.stIconColor,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
