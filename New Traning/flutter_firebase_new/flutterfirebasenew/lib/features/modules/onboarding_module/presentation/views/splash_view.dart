import 'package:flutter/material.dart';
import 'package:flutterfirebasenew/features/modules/onboarding_module/presentation/controller/splash_view_controller.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SplashViewController>(
        builder: (controller) {
          return Center(child: Text('Welcome', style: TextStyle(fontSize: 32)));
        },
      ),
    );
  }
}
