import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/verifyscreens/verify_safe_screen.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
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
              Image.asset(  AppAssets.imgGetStartedText,
                height: 76,
                width: 354,
              ),
              Image.asset(AppAssets.imgCouple,
                height: 438,
                width: 355,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const VerifySafeScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFF466A),
                  foregroundColor: Color(0xFFFFFFFF),
                  minimumSize: Size(double.infinity, 50), // full width
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 20,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
