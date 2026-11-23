import 'package:datecetera_app/config/app_colors.dart';
import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final double fontSizeText;
  final double fontSizeInt;
  final String text1;
  final String text2;

  const RichTextWidget({
    super.key,
    required this.fontSizeInt,
    required this.fontSizeText,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 14),

        children: <TextSpan>[
          TextSpan(
            text: text1,
            style: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.normal,
              fontSize: fontSizeText,
            ),
          ),
          TextSpan(
            text: text2,
            style: TextStyle(
              color: AppColors.onBoardingTileBorder,
              fontWeight: FontWeight.bold,
              fontSize: fontSizeInt,
            ),
          ),
        ],
      ),
    );
  }
}
