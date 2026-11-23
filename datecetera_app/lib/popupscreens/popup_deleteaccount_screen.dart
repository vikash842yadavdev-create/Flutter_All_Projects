import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/widgets/buttons/custom_button2_widget.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/popup_screen_widget.dart';
import 'package:flutter/material.dart';

class PopupDeleteaccountScreen extends StatelessWidget {
  const PopupDeleteaccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopupScreenWidget(
        popupImage: Image.asset(AppAssets.imgDeleteLogo, height: 55, width: 55),
        title: 'Delete Account',
        description: 'Are you sure you want to delete your account?',
        button: CustomNextButtonWidget(
          buttonText: 'Yes, Delete My Account',
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
