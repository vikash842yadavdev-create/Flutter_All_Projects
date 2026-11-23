import 'package:datecetera_app/config/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton2Widget extends StatelessWidget {
  final VoidCallback? onPressed;
  String? buttonText;
  Color? buttonColor;
  final Color textColor;
  CustomButton2Widget({
    super.key,
    required this.onPressed,
    this.buttonText,
    this.buttonColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: 342,
      decoration: BoxDecoration(
        color: buttonColor,
        gradient: buttonColor == null
            ? LinearGradient(
                colors: [
                  AppColors.stBgmGradientStart,
                  AppColors.stBgmGradientEnd,
                ],
              )
            : null,
        borderRadius: BorderRadius.circular(30),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          buttonText ?? 'Next',
          style: TextStyle(
            fontSize: 20,
            color: textColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
