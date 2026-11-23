import 'dart:ui';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class MatchesPersonProfileCardWidget extends StatefulWidget {
  final String imgPerson;
  final String personName;
  final String personAge;
  final String personDistance;
  final String personMatchPercentage;
  const MatchesPersonProfileCardWidget({
    super.key,
    required this.imgPerson,
    required this.personName,
    required this.personAge,
    required this.personDistance,
    required this.personMatchPercentage,
  });

  @override
  State<MatchesPersonProfileCardWidget> createState() =>
      _MatchesPersonProfileCardWidgetState();
}

class _MatchesPersonProfileCardWidgetState
    extends State<MatchesPersonProfileCardWidget> {
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
              child: Image.asset(widget.imgPerson),
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
                    height: 65,
                    color: Colors.white.withOpacity(0.1), // glass tint
                  ),
                ),
              ),
            ),

            /// TEXT INFO
            Positioned(
              bottom: 10,
              left: 14,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(
                    widget.personName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Age: ${widget.personAge}",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Text(
                    "Distance: ${widget.personDistance}km",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),

            /// ACTIVE TAG
            Positioned(
              bottom: 20,
              right: 10,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "Active",
                    style: TextStyle(color: Colors.white, fontSize: 10),
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
              left: 34,
              top: -3,
              child: Container(
                height: 24,
                width: 98,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.onBoardingTileBorder,
                ),
                child: Center(
                  child: Text(
                    '${widget.personMatchPercentage}% Match',
                    style: TextStyle(fontSize: 12, color: Colors.white),
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
