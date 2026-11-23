import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/popupscreens/popup_verifyed_screen.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/buttons/details_back_arrow_button_widget.dart';
import 'package:datecetera_app/widgets/onboarding_carddetails_column_widget.dart';
import 'package:datecetera_app/widgets/question_title_desc_widget.dart';
import 'package:flutter/material.dart';

class EnterCardDetailsScreen extends StatefulWidget {
  const EnterCardDetailsScreen({super.key});

  @override
  State<EnterCardDetailsScreen> createState() => _EnterCardDetailsScreenState();
}

class _EnterCardDetailsScreenState extends State<EnterCardDetailsScreen> {
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

                  QuestionTitleDesc(questionTitle: "Enter Card Details"),
                  Image.asset(AppAssets.imgCard),
                  SizedBox(height: 20),

                  OnboardingCarddetailsColumnWidget(
                    upperLabel: 'Card Holder',
                    textfieldHint: 'Emily Johnson',
                  ),
                  OnboardingCarddetailsColumnWidget(
                    upperLabel: 'Card Number',
                    textfieldHint: '9874 5612 3254 4521',
                  ),

                  Row(children: [
                    OnboardingCarddetailsColumnWidget(
                      upperLabel: 'Expiry Date',
                      textfieldHint: '01/02/2026',
                      textfieldwidth: 150,
                      textfieldIcon: Icons.calendar_today_outlined,
                      textfieldBgColor: Colors.transparent,
                      isSelectedBorder: true,

                    ),
                    SizedBox(width: 20),
                    OnboardingCarddetailsColumnWidget(
                      upperLabel: 'CVV',
                      textfieldHint: '123',
                      textfieldwidth: 150,

                    ),
                  ],),
                  Text(
                    'You’ll be charged \$1 for one-time verification only.',
                    style: TextStyle(color: AppColors.questionDesc, fontSize: 12),
                  ),
                ],
              ),

              CustomNextButtonWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PopupVerifyedScreen(),
                    ),
                  );
                },
                buttonText: 'Add',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
