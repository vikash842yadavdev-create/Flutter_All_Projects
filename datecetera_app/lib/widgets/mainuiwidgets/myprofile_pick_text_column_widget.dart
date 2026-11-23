import 'package:flutter/material.dart';

class MyprofilePickTextColumnWidget extends StatelessWidget {
  final String imgProfile;
  final double imgWidth;
  final double imgHeight;
  final String descriptionText;
  final double textFontSize;
  final Color textColor;
  final double? sizeBoxSize;
  const MyprofilePickTextColumnWidget({
    super.key,
    required this.imgProfile,
    required this.imgHeight,
    required this.imgWidth,
    required this.descriptionText,
    required this.textFontSize,
    required this.textColor,
    this.sizeBoxSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(imgProfile, height: imgHeight, width: imgWidth),
        ),
        SizedBox(height: sizeBoxSize),
        Text(
          descriptionText,
          style: TextStyle(
            fontSize: textFontSize,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
