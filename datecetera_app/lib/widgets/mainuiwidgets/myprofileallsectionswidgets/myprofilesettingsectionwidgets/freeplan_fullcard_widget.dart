import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofileallsectionswidgets/myprofilesettingsectionwidgets/subscriptions_plansdetailstext_widget.dart';
import 'package:flutter/material.dart';

class FreeplanFullcardWidget extends StatelessWidget {
  const FreeplanFullcardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppColors.freePlanCardColor,
      elevation: 8,
  
      child: Container(
        padding: EdgeInsets.all(10),
        height: 499,
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

            SubscriptionsPlansdetailstextWidget(
              descText:
                  'Create and browse profiles',
            ),
            SubscriptionsPlansdetailstextWidget(
              descText: 'Swipe and match (limited daily\n likes)',
            ),
            SubscriptionsPlansdetailstextWidget(
              descText:
                  'Chat with matches',
            ),
            SubscriptionsPlansdetailstextWidget(
              descText:
                  'Date planner access (basic)',
            ),
            SubscriptionsPlansdetailstextWidget(
              descText: 'View shared interests',
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
