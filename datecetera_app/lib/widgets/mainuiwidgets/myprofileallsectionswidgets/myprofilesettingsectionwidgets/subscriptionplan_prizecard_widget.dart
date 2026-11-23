import 'package:datecetera_app/config/app_colors.dart';
import 'package:flutter/material.dart';

class SubscriptionplanPrizecardWidget extends StatelessWidget {
  final String planMonthText;
  final String planPrizeText;
  final bool isSelected;
  final Color cardColor;
  const SubscriptionplanPrizecardWidget({
    super.key,
    required this.isSelected,
    required this.planMonthText,
    required this.planPrizeText,
    required this.cardColor
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 98,
          width: 94,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.onBoardingTileBorder, width: 1.2),
            borderRadius: BorderRadius.circular(10),
            color: cardColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'Datecetera+',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.onBoardingTileBorder,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(planMonthText, style: TextStyle(fontSize: 10)),
                  Text(
                    '\$$planPrizeText',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                height: 26,
                width: 94,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color: AppColors.onBoardingTileBorder,
                ),
                child: Center(
                  child: Text(
                    'Seclect',
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        if (isSelected)
          Positioned(
            top: -5,
            right: -5,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green[800],
              ),
              child: Icon(Icons.check, color: Colors.white, size: 15),
            ),
          ),
      ],
    );
  }
}
