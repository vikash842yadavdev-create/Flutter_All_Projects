import 'dart:ui';

import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CardSwiperExample extends StatefulWidget {
  const CardSwiperExample({super.key});

  @override
  State<CardSwiperExample> createState() => _CardSwiperExampleState();
}

class _CardSwiperExampleState extends State<CardSwiperExample> {
  List<Container> cards = [
    Container(
      alignment: Alignment.center,
      child: Image.asset(AppAssets.imgCard1, fit: BoxFit.cover),
    ),
    Container(
      alignment: Alignment.center,
      child: Image.asset(AppAssets.imgCard2, fit: BoxFit.cover),
    ),
    Container(
      alignment: Alignment.center,
      child: Image.asset(AppAssets.imgCard3, fit: BoxFit.cover),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Swiper Example')),
      body: SizedBox(
        height: 635,
        width: 351,
        child: CardSwiper(
          cardsCount: cards.length,
           numberOfCardsDisplayed: 1,
          // backCardOffset: const Offset(20, 20),
          // scale: 0.9,
          padding: EdgeInsets.zero,
          cardBuilder: (context, index, percentX, percentY) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Stack(
                children: [
                  /// IMAGE
                  Positioned.fill(child: cards[index]),

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
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          height: 160,
                          color: Colors.white.withOpacity(0.1), // glass tint
                        ),
                      ),
                    ),
                  ),

                  /// TEXT INFO
                  Positioned(
                    bottom: 45,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Emily Johnson",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Age: 27", style: TextStyle(color: Colors.white)),
                        Text(
                          "Distance: 5km",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),

                  /// ACTIVE TAG
                  Positioned(
                    bottom: 120,
                    left: 20,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "Active",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),

                  Positioned(
                    child: Container(
                      height: 635,
                      width: 351,
                       decoration: BoxDecoration(
                        border: const GradientBoxBorder(
                          gradient: LinearGradient(
                            colors: [
                              AppColors.stBgmGradientStart, AppColors.stBgmGradientEnd],
                              begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),

                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
