import 'package:datecetera_app/config/app_colors.dart';
import 'package:flutter/material.dart';

class OnboardingThreeIconWidget extends StatefulWidget {
  const OnboardingThreeIconWidget({super.key});

  @override
  State<OnboardingThreeIconWidget> createState() => _OnboardingThreeIconWidgetState();
}

class _OnboardingThreeIconWidgetState extends State<OnboardingThreeIconWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 244,
      child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 20,
                  spreadRadius: 1,
                  offset: Offset(0, 0), // Shadow position
                ),
              ],
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 25, // Sets the size (half the diameter)

              child: Icon(Icons.close, size: 30, color: AppColors.onBoardingTileBorder)),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 20,
                  spreadRadius: 1,
                  offset: Offset(0, 0), // Shadow position
                ),
              ],
            ),

            child: CircleAvatar(
              backgroundColor: AppColors.onBoardingTileBorder,
              radius: 40, // Sets the size (half the diameter)

              child: Icon(Icons.favorite, color: Colors.white, size: 40)),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 20,
                  spreadRadius: 1,
                  offset: Offset(0, 0), // Shadow position
                ),
              ],
            ),
            child: CircleAvatar(
              backgroundColor: AppColors.onBoardingTileBorder,
              radius: 25,
              child: Icon(Icons.star, color: Colors.yellow, size: 30)),
          ),
        ],
      )
    );
  }
}
