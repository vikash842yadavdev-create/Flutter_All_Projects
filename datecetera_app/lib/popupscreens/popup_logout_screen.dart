import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/widgets/buttons/custom_button2_widget.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/popup_screen_widget.dart';
import 'package:flutter/material.dart';

class PopupLogoutScreen extends StatefulWidget {
  const PopupLogoutScreen({super.key});

  @override
  State<PopupLogoutScreen> createState() => _PopupLogoutScreenState();
}

class _PopupLogoutScreenState extends State<PopupLogoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopupScreenWidget(
        popupImage: Image.asset(AppAssets.imgLogoutLogo, height: 55, width: 55),
        title: 'Are you Sure?',
        description: 'Are you sure you want to log out?',
        button: CustomNextButtonWidget(
          buttonText: 'Yes, Log Out',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        button2: CustomButton2Widget(
          textColor: AppColors.onBoardingTileBorder,
          buttonText: 'Cancle',
          buttonColor: AppColors.stBgmGradientEnd,
          onPressed: () {
            Navigator.pop(context);

          },
        ),
      ),
    );
  }
}
