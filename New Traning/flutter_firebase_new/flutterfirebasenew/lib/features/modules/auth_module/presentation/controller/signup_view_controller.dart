import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirebasenew/features/config/routes/app_routes.dart';
import 'package:get/get.dart';

class SignupViewController extends GetxController {
  final TextEditingController usernameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPassController = TextEditingController();

  bool check = false;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void signUp({
    required String username,
    required String email,
    required String password,
    required String confirmpassword,
  }) async {
    if (username.trim().isEmpty) {
      Get.snackbar('Error', 'Please enter username');
    } else if (email.trim().isEmpty) {
      Get.snackbar('Error', 'Please enter email');
    } else if (!GetUtils.isEmail(email.trim())) {
      Get.snackbar('Error', 'Please enter valid email');
    } else if (password.isEmpty) {
      Get.snackbar('Error', 'Please enter password');
    } else if (confirmpassword.isEmpty) {
      Get.snackbar('Error', 'Please confirm password');
    } else if (password != confirmpassword) {
      Get.snackbar('Error', 'Passwords do not match');
    } else if (!check) {
      Get.snackbar('Error', 'Please accept the terms and conditions');
    } else {
      try {
        await _auth.createUserWithEmailAndPassword(
          email: email.trim(),
          password: password,
        );

        Get.snackbar('Success', 'Account created successfully');

        Get.offNamed(AppRoutes.loginView);
      } on FirebaseAuthException catch (e) {
        debugPrint('Firebase Error Code: ${e.code}');
        debugPrint('Firebase Error Message: ${e.message}');

        if (e.code == 'email-already-in-use') {
          Get.snackbar('Error', 'This email is already registered');
        } else if (e.code == 'weak-password') {
          Get.snackbar('Error', 'Password is too weak');
        } else if (e.code == 'invalid-email') {
          Get.snackbar('Error', 'Please enter a valid email');
        } else {
          Get.snackbar('Error', e.message ?? 'Something went wrong');
        }
      } catch (e) {
        debugPrint('Error: $e');

        Get.snackbar('Error', 'Something went wrong');
      }
    }
  }

  @override
  void onClose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPassController.dispose();

    super.onClose();
  }
}
