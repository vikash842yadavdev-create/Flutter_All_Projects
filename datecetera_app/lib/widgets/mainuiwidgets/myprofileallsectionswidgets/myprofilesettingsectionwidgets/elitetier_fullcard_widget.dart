import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofileallsectionswidgets/myprofilesettingsectionwidgets/selectplanbar_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofileallsectionswidgets/myprofilesettingsectionwidgets/subscriptionplan_prizecard_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofileallsectionswidgets/myprofilesettingsectionwidgets/subscriptions_plansdetailstext_widget.dart';
import 'package:flutter/material.dart';

class ElitetierFullcardWidget extends StatefulWidget {
  const ElitetierFullcardWidget({super.key});

  @override
  State<ElitetierFullcardWidget> createState() =>
      _ElitetierFullcardWidgetState();
}

class _ElitetierFullcardWidgetState extends State<ElitetierFullcardWidget> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppColors.eliteTierCardColor,
      elevation: 8,
      // clipBehavior: Clip.hardEdge,
      // surfaceTintColor: AppColors.eliteTierCardColor,
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
                  'Elite Tier',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  ' \$29.99/month',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),

            Text(
              'Includes everything in Datecetera+, and:',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.onBoardingTileBorder,
                fontWeight: FontWeight.w500,
              ),
            ),

            SubscriptionsPlansdetailstextWidget(
              descText:
                  'Profile Priority: appear first to\n compatible matches',
            ),
            SubscriptionsPlansdetailstextWidget(
              descText: '3 “SuperBoosts” per month (30 \nmin high-visibility)',
            ),
            SubscriptionsPlansdetailstextWidget(
              descText:
                  'Premium match scores based on\n deeper compatibility data)',
            ),
            SubscriptionsPlansdetailstextWidget(
              descText:
                  'Location Travel Mode – match in\n other cities before traveling',
            ),
            SubscriptionsPlansdetailstextWidget(
              descText: 'Access to “Verified Only” profiles',
            ),

            SubscriptionsPlansdetailstextWidget(
              descText:
                  '1 Monthly Concierge Date Credit –\n AI suggests a date based on ',
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
                    cardColor: AppColors.eliteTierCardColor.withOpacity(0.5),

                    isSelected: selectedIndex == 0,
                    planMonthText: 'Monthly',
                    planPrizeText: '29.99',
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = selectedIndex == 1 ? -1 : 1;
                    });
                  },
                  child: SubscriptionplanPrizecardWidget(
                    cardColor: AppColors.eliteTierCardColor.withOpacity(0.5),

                    isSelected: selectedIndex == 1,
                    planMonthText: '3-Monthly',
                    planPrizeText: '79.99',
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = selectedIndex == 2 ? -1 : 2;
                    });
                  },
                  child: SubscriptionplanPrizecardWidget(
                    cardColor: AppColors.eliteTierCardColor.withOpacity(0.5),

                    isSelected: selectedIndex == 2,
                    planMonthText: '6-Monthly',
                    planPrizeText: '149.99',
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
