import 'package:firebase_android/features/config/routes/app_routes.dart';
import 'package:firebase_android/features/modules/common_widgets/custom_snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final TextEditingController userNameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

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
    final String passwordValue = password.trim();
    final String confirmPasswordValue = confirmPassword.trim();

    // Username validation
    if (usernameValue.isEmpty) {
      CustomGetSnackBar.snackBar(
        title: 'Error',
        message: 'Please enter username',
        position: 'top',
      );
      return;
    }

    // Email validation
    if (emailValue.isEmpty) {
      CustomGetSnackBar.snackBar(
        title: 'Error',
        message: 'Please enter email',
        position: 'top',
      );
      return;
    }

    if (!GetUtils.isEmail(emailValue)) {
      CustomGetSnackBar.snackBar(
        title: 'Error',
        message: 'Please enter valid email',
        position: 'top',
      );
      return;
    }

    // Password validation
    if (passwordValue.isEmpty) {
      CustomGetSnackBar.snackBar(
        title: 'Error',
        message: 'Please enter password',
        position: 'top',
      );
      return;
    }

    if (passwordValue.length < 6) {
      CustomGetSnackBar.snackBar(
        title: 'Error',
        message: 'Password must be at least 6 characters',
        position: 'top',
      );
      return;
    }

    // Confirm password validation
    if (confirmPasswordValue.isEmpty) {
      CustomGetSnackBar.snackBar(
        title: 'Error',
        message: 'Please enter confirm password',
        position: 'top',
      );
      return;
    }

    if (confirmPasswordValue != passwordValue) {
      CustomGetSnackBar.snackBar(
        title: 'Error',
        message: 'Please enter same password',
        position: 'top',
      );
      return;
    }

    // Terms & conditions
    if (!check) {
      CustomGetSnackBar.snackBar(
        title: 'Error',
        message: 'Please accept the terms & conditions',
        position: 'top',
      );
      return;
    }

    try {
      debugPrint('Firebase Signup Email: $emailValue');

      // Create Firebase account
      final UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(
            email: emailValue,
            password: passwordValue,
          );

      final User? user = userCredential.user;

      if (user != null) {
        debugPrint('Firebase User UID: ${user.uid}');
        debugPrint('Firebase User Email: ${user.email}');

        // Save username in Firebase Authentication profile
        await user.updateDisplayName(usernameValue);

        CustomGetSnackBar.snackBar(
          title: 'Success',
          message: 'You successfully signed up',
          position: 'top',
        );

        startScreen();
      }
    } on FirebaseAuthException catch (e) {
      debugPrint('Firebase Signup Error Code: ${e.code}');
      debugPrint('Firebase Signup Error Message: ${e.message}');

      String message;

      switch (e.code) {
        case 'email-already-in-use':
          message = 'Email already exists';
          break;

        case 'invalid-email':
          message = 'Please enter a valid email';
          break;

        case 'weak-password':
          message = 'Password is too weak';
          break;

        case 'operation-not-allowed':
          message = 'Email/password signup is not enabled';
          break;

        case 'network-request-failed':
          message = 'Please check your internet connection';
          break;

        default:
          message = 'Signup failed. Please try again';
      }

      CustomGetSnackBar.snackBar(
        title: 'Signup Failed',
        message: message,
        position: 'top',
      );
    } catch (e) {
      debugPrint('Unexpected Firebase Signup Error: $e');

      CustomGetSnackBar.snackBar(
        title: 'Signup Failed',
        message: 'Something went wrong. Please try again',
        position: 'top',
      );
    }
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
