import 'package:flutter/material.dart';
import 'package:get_x/get.dart';
import 'package:newproject001/app/Core/utils/app_colors.dart';
import 'package:newproject001/app/routes/app_routes.dart';

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
        snackPosition: SnackPosition.top,
        colorText: Colors.white,
        backgroundColor: AppColors.secondary,
      );
    } else if (password.isEmpty) {
      Get.snackbar(
        'Error',
        'Please Enter Password',
        snackPosition: SnackPosition.top,
        colorText: Colors.white,
        backgroundColor: AppColors.secondary,
      );
    } else {
      Get.offAllNamed(Routes.profileScreen);
    }
  }

  void signUp() {
    Get.toNamed(Routes.signupScreen);
  }
}
