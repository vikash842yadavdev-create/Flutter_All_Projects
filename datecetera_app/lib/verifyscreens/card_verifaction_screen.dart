import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/verifyscreens/enter_card_details_screen.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/buttons/details_back_arrow_button_widget.dart';
import 'package:datecetera_app/widgets/question_title_desc_widget.dart';
import 'package:flutter/material.dart';

class CardVerifactionScreen extends StatefulWidget {
  const CardVerifactionScreen({super.key});

  @override
  State<CardVerifactionScreen> createState() => _CardVerifactionScreenState();
}

class _CardVerifactionScreenState extends State<CardVerifactionScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailsBackArrowButtonWidget(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),

                  QuestionTitleDesc(
                    questionTitle: "Card Verification Required to Complete Profile",
                  ),

                  Image.asset(AppAssets.imgCardVerification),
                ],
              ),

              CustomNextButtonWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EnterCardDetailsScreen(),
                    ),
                  );
                },
                buttonText: 'Verify with Card',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
