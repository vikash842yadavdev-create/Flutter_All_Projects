import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofileallsectionswidgets/myprofilesettingsectionwidgets/elitetier_fullcard_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofileallsectionswidgets/myprofilesettingsectionwidgets/freeplan_fullcard_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofileallsectionswidgets/myprofilesettingsectionwidgets/standardpremium_fullcard_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofileallsectionswidgets/myprofilesettingsectionwidgets/upperappbar_widget.dart';
import 'package:flutter/material.dart';

class MyprofileSubscriptionplanScreen extends StatefulWidget {
  const MyprofileSubscriptionplanScreen({super.key});

  @override
  State<MyprofileSubscriptionplanScreen> createState() =>
      _MyprofileSubscriptionplanScreenState();
}

class _MyprofileSubscriptionplanScreenState
    extends State<MyprofileSubscriptionplanScreen> {
  int selectedPlanIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget getSelectedPlanWidget() {
      switch (selectedPlanIndex) {
        case 0:
          return FreeplanFullcardWidget(key: ValueKey(0));
        case 1:
          return StandardpremiumFullcardWidget(key: ValueKey(1));
        case 2:
          return ElitetierFullcardWidget(key: ValueKey(2));
        default:
          return FreeplanFullcardWidget(key: ValueKey(0));
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: [
              UpperappbarWidget(
                onTap: () {
                  Navigator.pop(context);
                },
                title: 'My Subscription Plan',
              ),
              SizedBox(height: 20),

              Text(
                'Get more matches. Build better connections. Experience Datecetera to the fullest.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedPlanIndex = 0;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        width: 211,
                        height: 76.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.freePlanCardColor,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                AppAssets.imgHeart,
                                width: 26,
                                height: 26,
                              ),
                              Text(
                                'Free Plan – Always Available',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedPlanIndex = 1;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        width: 211,
                        height: 76.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.standardPremiumCardColor,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                AppAssets.imgHeart,
                                width: 26,
                                height: 26,
                              ),
                              Text(
                                'Datecetera+ (Standard Premium)',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedPlanIndex = 2;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        width: 211,
                        height: 76.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.eliteTierCardColor,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                AppAssets.imgHeart,
                                width: 26,
                                height: 26,
                              ),
                              Text(
                                'DateceteraX (Elite Tier)',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 2),
                  Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.onBoardingTileBorder,
                    ),
                  ),
                  SizedBox(width: 2),

                  Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              AnimatedSwitcher(
                duration: Duration(milliseconds: 400),
                transitionBuilder: (child, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: Offset(0.5, 0),
                        end: Offset(0, 0),
                      ).animate(animation),
                      child: child,
                    ),
                  );
                },
                child: getSelectedPlanWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
