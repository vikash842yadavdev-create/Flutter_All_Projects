import 'package:datecetera_app/MainUi/first_home_screen.dart';
import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/popup_screen_widget.dart';
import 'package:flutter/material.dart';

class PopupVerifyedScreen extends StatefulWidget {
  const PopupVerifyedScreen({super.key});

  @override
  State<PopupVerifyedScreen> createState() => _PopupVerifyedScreenState();
}

class _PopupVerifyedScreenState extends State<PopupVerifyedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopupScreenWidget(
        popupImage: Image.asset(
          AppAssets.imgSuccessfulOne,
          width: 80,
          height: 80,
        ),
        title: 'You\'re Verified!',
        description:
            'Your card has been verified. Welcome to Datecetera!Your profile is now complete.',
        button: CustomNextButtonWidget(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => const FirstHomeScreen()));
          },
          buttonText: 'Start Matching',
        ),
      ),
    );
  }
}
