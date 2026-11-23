import 'package:e_commerce_app/features/config/routes/app_routes.dart';
import 'package:e_commerce_app/features/core/localdata/shared_pref.dart';
import 'package:e_commerce_app/features/modules/common_widgets/get_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool check = false;

  void startScreen() {
    Get.offNamed(AppRoutes.loginScreen);
  }

  Future<void> signUp({
    required String userName,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    final String usernameValue = userName.trim();
    final String emailValue = email.trim().toLowerCase();

    if (usernameValue.isEmpty) {
      CustomGetSnackBar.error(
        title: 'Error',
        message: 'Please enter username',
        position: 'top',
      );
      return;
    }

    if (emailValue.isEmpty) {
      CustomGetSnackBar.error(
        title: 'Error',
        message: 'Please enter email',
        position: 'top',
      );
      return;
    }

    if (!GetUtils.isEmail(emailValue)) {
      CustomGetSnackBar.error(
        title: 'Error',
        message: 'Please enter valid email',
        position: 'top',
      );
      return;
    }

    if (password.isEmpty) {
      CustomGetSnackBar.error(
        title: 'Error',
        message: 'Please enter password',
        position: 'top',
      );
      return;
    }

    if (confirmPassword.isEmpty) {
      CustomGetSnackBar.error(
        title: 'Error',
        message: 'Please enter confirm password',
        position: 'top',
      );
      return;
    }

    if (confirmPassword != password) {
      CustomGetSnackBar.error(
        title: 'Error',
        message: 'Please enter same password',
        position: 'top',
      );
      return;
    }

    if (!check) {
      CustomGetSnackBar.error(
        title: 'Error',
        message: 'Please accept the terms & conditions',
        position: 'top',
      );
      return;
    }

    final List<Map<String, dynamic>> userList = await SharedPref.getUserList();

    final bool usernameExists = userList.any(
      (user) =>
          user['username']?.toString().toLowerCase() ==
          usernameValue.toLowerCase(),
    );

    if (usernameExists) {
      CustomGetSnackBar.error(
        title: 'Error',
        message: 'Username already exists',
        position: 'top',
      );
      return;
    }

    final bool emailExists = userList.any(
      (user) => user['email']?.toString().toLowerCase() == emailValue,
    );

    if (emailExists) {
      CustomGetSnackBar.error(
        title: 'Error',
        message: 'Email already exists',
        position: 'top',
      );
      return;
    }

    final Map<String, dynamic> newUser = {
      'username': usernameValue,
      'email': emailValue,
      'password': password,
    };

    userList.add(newUser);
    update();

    await SharedPref.setUserList(userList);

    CustomGetSnackBar.success(
      title: 'Success',
      message: 'You successfully signed up',
      position: 'top',
    );

    startScreen();
  }

  @override
  void onClose() {
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}
