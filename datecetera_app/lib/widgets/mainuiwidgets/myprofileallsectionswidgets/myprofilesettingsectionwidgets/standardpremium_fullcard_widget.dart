import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofileallsectionswidgets/myprofilesettingsectionwidgets/selectplanbar_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofileallsectionswidgets/myprofilesettingsectionwidgets/subscriptionplan_prizecard_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofileallsectionswidgets/myprofilesettingsectionwidgets/subscriptions_plansdetailstext_widget.dart';
import 'package:flutter/material.dart';

class StandardpremiumFullcardWidget extends StatefulWidget {
  const StandardpremiumFullcardWidget({super.key});

  @override
  State<StandardpremiumFullcardWidget> createState() =>
      _StandardpremiumFullcardWidgetState();
}

class _StandardpremiumFullcardWidgetState
    extends State<StandardpremiumFullcardWidget> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppColors.standardPremiumCardColor,
      elevation: 8,
      child: Container(
        padding: EdgeInsets.all(10),
        height: 840,
        width: 350,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppAssets.imgLogo2, width: 105, height: 43),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Standard Premium',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  ' \$14.99/month',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),

            Text(
              'Includes everything in Free, plus:',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.onBoardingTileBorder,
                fontWeight: FontWeight.w500,
              ),
            ),

            SubscriptionsPlansdetailstextWidget(descText: 'Unlimited likes'),
            SubscriptionsPlansdetailstextWidget(descText: 'See who liked you'),
            SubscriptionsPlansdetailstextWidget(
              descText:
                  'Set advanced preferences(Height,\n Religion, Education, Lifestyle, Etc.)',
            ),
            SubscriptionsPlansdetailstextWidget(
              descText:
                  'Smart Filters (filter by shared\n interests, values, etc.)',
            ),
            SubscriptionsPlansdetailstextWidget(
              descText: 'Video chat with icebreaker games',
            ),
            SubscriptionsPlansdetailstextWidget(
              descText: 'Access “Boost Me” once per week',
            ),
            SubscriptionsPlansdetailstextWidget(
              descText: 'Prioritized exposure on swipe\n decks',
            ),

            SelectplanbarWidget(),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = selectedIndex == 0 ? -1 : 0;
                    });
                  },
                  child: SubscriptionplanPrizecardWidget(
                    cardColor: AppColors.standardPremiumCardColor.withOpacity(
                      0.5,
                    ),
                    isSelected: selectedIndex == 0,
                    planMonthText: 'Monthly',
                    planPrizeText: '14.99',
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = selectedIndex == 1 ? -1 : 1;
                    });
                  },
                  child: SubscriptionplanPrizecardWidget(
                    cardColor: AppColors.standardPremiumCardColor.withOpacity(
                      0.5,
                    ),

                    isSelected: selectedIndex == 1,
                    planMonthText: '3-Monthly',
                    planPrizeText: '39.99',
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = selectedIndex == 2 ? -1 : 2;
                    });
                  },
                  child: SubscriptionplanPrizecardWidget(
                    cardColor: AppColors.standardPremiumCardColor.withOpacity(
                      0.5,
                    ),

                    isSelected: selectedIndex == 2,
                    planMonthText: '6-Monthly',
                    planPrizeText: '69.99',
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            CustomNextButtonWidget(
              onPressed: () {},
              buttonText: 'Select your plan',
            ),
          ],
        ),
      ),
    );
  }
}
