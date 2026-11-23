import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfirstproject/routes/app_routes.dart';

class SignupController extends GetxController {
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void onClose() {
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();

    super.onClose();
  }

  void login() {
    Get.toNamed(Routes.loginView);
  }

  void signUp({
    required String userName,
    required String email,
    required String password,
    required String cPassword,
  }) {
    if (userName.isEmpty) {
      Get.snackbar(
        'Error',
        "Please Enter User Name",
        snackPosition: SnackPosition.TOP,
        colorText: Colors.white,
      );
    } else if (email.trim().isEmpty) {
      Get.snackbar(
        'Error',
        "Please Enter Email",
        snackPosition: SnackPosition.TOP,
        colorText: Colors.white,
      );
    } else if (!GetUtils.isEmail(email)) {
      Get.snackbar(
        'Error',
        "Please Enter Valid Email",
        snackPosition: SnackPosition.TOP,
        colorText: Colors.white,
      );
    } else if (password.isEmpty) {
      Get.snackbar(
        'Error',
        "Please Enter Password",
        snackPosition: SnackPosition.TOP,
        colorText: Colors.white,
      );
    } else if (password.length < 8) {
      Get.snackbar(
        'Error',
        "Please enter at least 8 number or char",
        snackPosition: SnackPosition.TOP,
        colorText: Colors.white,
      );
    } else if (cPassword.isEmpty) {
      Get.snackbar(
        'Error',
        "Please Enter Password",
        snackPosition: SnackPosition.TOP,
        colorText: Colors.white,
      );
    } else if (password != cPassword) {
      Get.snackbar(
        'Error',
        "Your Password not matched",
        snackPosition: SnackPosition.TOP,
        colorText: Colors.white,
      );
    } else {
      Get.snackbar(
        'Success',
        "You Signup successfully",
        snackPosition: SnackPosition.TOP,
        colorText: Colors.white,
      );
      login();
    }
  }
}
