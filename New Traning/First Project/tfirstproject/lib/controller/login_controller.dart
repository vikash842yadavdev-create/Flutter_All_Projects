import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:tfirstproject/routes/app_routes.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();

    super.onClose();
  }

  void login({required String email, required String password}) {
    if (email.isEmpty) {
      Get.snackbar(
        'Error',
        "Please Enter Email",
        snackPosition: SnackPosition.TOP,
        colorText: Colors.white,
      );
    } else if (password.isEmpty) {
      Get.snackbar('Error', 'Please Enter Password');
    } else {
      Get.offAllNamed(Routes.homeView);
    }
  }

  void signUp() {
    Get.toNamed(Routes.signupView);
  }
}
