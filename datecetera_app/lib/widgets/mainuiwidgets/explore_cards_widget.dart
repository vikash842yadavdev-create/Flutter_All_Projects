import 'dart:ui';

import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class ExploreCardsWidget extends StatefulWidget {
  final String imgCardImage;
  final String cardMainText;
  final String cardPersonTextData;
  const ExploreCardsWidget({
    super.key,
    required this.imgCardImage,
    required this.cardMainText,
    required this.cardPersonTextData,
  });

  @override
  State<ExploreCardsWidget> createState() => _ExploreCardsWidgetState();
}

class _ExploreCardsWidgetState extends State<ExploreCardsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 206.59,
      width: 163,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Stack(
          children: [
            /// IMAGE
            Positioned.fill(
              child: Image.asset(widget.imgCardImage, fit: BoxFit.cover),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                  child: Container(
                    height: 40,
                    color: Colors.white.withOpacity(0.1), // glass tint
                  ),
                ),
              ),
            ),

            /// TEXT INFO
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 50,
                width: 158,
                child: Center(
                  child: Text(
                    widget.cardMainText,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.onBoardingTileBorder,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              child: Container(
                // height: 635,
                // width: 351,
                decoration: BoxDecoration(
                  border: const GradientBoxBorder(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.stBgmGradientStart,
                        AppColors.stBgmGradientEnd,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),

                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),

            Positioned(
              left: 17,
              top: 15,
              child: Container(
                height: 10,
                width: 26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: AppColors.onBoardingTileBorder,
                ),
                child: Center(
                  child: Row(
                    mainAxisSize:
                        MainAxisSize.min, // Shrinks row to fit content
                    children: [
                      Icon(
                        Icons.person, // Choose your icon
                        size: 8, // Matches your text size
                        color: Colors.white,
                      ),
                      // Optional: Adds space between icon and text
                      Text(
                        widget.cardPersonTextData,
                        style: TextStyle(fontSize: 8, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
