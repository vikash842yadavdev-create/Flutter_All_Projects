import 'package:flutter/material.dart';
import 'package:get_x/get.dart';
import 'package:newproject001/app/routes/app_routes.dart';
import 'package:newproject001/app/Core/utils/app_colors.dart';

class SignupController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final dobController = TextEditingController();

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    dobController.dispose();

    super.onClose();
  }

  void login() {
    Get.toNamed(Routes.loginScreen);
  }

  void signUp({
    required String userName,
    required String email,
    required String password,
    required String cPassword,
    required String dob,
  }) {
    if (userName.isEmpty) {
      Get.snackbar(
        'Error',
        "Please Enter User Name",
        snackPosition: SnackPosition.top,
        colorText: Colors.white,
        backgroundColor: AppColors.secondary,
      );
    } else if (email.trim().isEmpty) {
      Get.snackbar(
        'Error',
        "Please Enter Email",
        snackPosition: SnackPosition.top,
        colorText: Colors.white,
        backgroundColor: AppColors.secondary,
      );
    } else if (!GetUtils.isEmail(email)) {
      Get.snackbar(
        'Error',
        "Please Enter Valid Email",
        snackPosition: SnackPosition.top,
        colorText: Colors.white,
        backgroundColor: AppColors.secondary,
      );
    } else if (password.isEmpty) {
      Get.snackbar(
        'Error',
        "Please Enter Password",
        snackPosition: SnackPosition.top,
        colorText: Colors.white,
        backgroundColor: AppColors.secondary,
      );
    } else if (password.length < 8) {
      Get.snackbar(
        'Error',
        "Please enter at least 8 number or char",
        snackPosition: SnackPosition.top,
        colorText: Colors.white,
        backgroundColor: AppColors.secondary,
      );
    } else if (cPassword.isEmpty) {
      Get.snackbar(
        'Error',
        "Please Enter Password",
        snackPosition: SnackPosition.top,
        colorText: Colors.white,
        backgroundColor: AppColors.secondary,
      );
    } else if (password != cPassword) {
      Get.snackbar(
        'Error',
        "Your Password not matched",
        snackPosition: SnackPosition.top,
        colorText: Colors.white,
        backgroundColor: AppColors.secondary,
      );
    } else if (dob.isEmpty) {
      Get.snackbar(
        'Error',
        "Please Enter Date Of Birth",
        snackPosition: SnackPosition.top,
        colorText: Colors.white,
        backgroundColor: AppColors.secondary,
      );
    } else {
      Get.snackbar(
        'Success',
        "You Signup successfully",
        snackPosition: SnackPosition.top,
        colorText: Colors.white,
        backgroundColor: AppColors.secondary,
      );
      login();
    }
  }
}
