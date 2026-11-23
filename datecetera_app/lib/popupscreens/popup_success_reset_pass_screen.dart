import 'dart:async';

import 'package:datecetera_app/LoginScreens/login_screen.dart';
import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/widgets/popup_screen_widget.dart';
import 'package:flutter/material.dart';

class PopupSuccessResetPassScreen extends StatefulWidget {
  const PopupSuccessResetPassScreen({super.key});

  @override
  State<PopupSuccessResetPassScreen> createState() =>
      _PopupSuccessResetPassScreenState();
}

class _PopupSuccessResetPassScreenState
    extends State<PopupSuccessResetPassScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopupScreenWidget(
        popupImage: Image.asset(
          AppAssets.imgSuccessfulOne,
          width: 80,
          height: 80,
        ),
        title: 'Password Reset Successful',
        description:
            'Your password has been updated. You can now log in with your new credentials.',
      ),
    );
  }
}
