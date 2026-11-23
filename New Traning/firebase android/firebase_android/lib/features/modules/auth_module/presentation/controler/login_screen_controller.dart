import 'package:firebase_android/features/config/routes/app_routes.dart';
import 'package:firebase_android/features/modules/common_widgets/custom_snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  final TextEditingController userNameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration.zero, () {
      checkLogin();
    });
  }

  void goToSignUpScreen() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  Future<void> login({
    required String userName,
    required String password,
  }) async {
    final email = userName.trim();
    final userPassword = password.trim();

    // Validate username/email
    if (email.isEmpty) {
      CustomGetSnackBar.snackBar(
        title: 'Error',
        message: 'Please enter your email',
        position: 'top',
      );
      return;
    }

    // Validate password
    if (userPassword.isEmpty) {
      CustomGetSnackBar.snackBar(
        title: 'Error',
        message: 'Please enter your password',
        position: 'top',
      );
      return;
    }

    try {
      debugPrint('Firebase Login Email: $email');

      final UserCredential userCredential = await _auth
          .signInWithEmailAndPassword(email: email, password: userPassword);

      final User? user = userCredential.user;

      if (user != null) {
        debugPrint('Firebase User UID: ${user.uid}');
        debugPrint('Firebase User Email: ${user.email}');

        CustomGetSnackBar.snackBar(
          title: 'Success',
          message: 'Login Successfully',
          position: 'top',
        );

        Get.offAllNamed(AppRoutes.homeScreen);
      }
    } on FirebaseAuthException catch (e) {
      debugPrint('Firebase Login Error Code: ${e.code}');
      debugPrint('Firebase Login Error Message: ${e.message}');

      String message;

      switch (e.code) {
        case 'invalid-credential':
          message = 'Invalid email or password';
          break;

        case 'user-not-found':
          message = 'No account found with this email';
          break;

        case 'wrong-password':
          message = 'Incorrect password';
          break;

        case 'invalid-email':
          message = 'Please enter a valid email';
          break;

        case 'user-disabled':
          message = 'This account has been disabled';
          break;

        case 'too-many-requests':
          message = 'Too many attempts. Please try again later';
          break;

        default:
          message = 'Login failed. Please try again';
      }

      CustomGetSnackBar.snackBar(
        title: 'Login Failed',
        message: message,
        position: 'top',
      );
    } catch (e) {
      debugPrint('Unexpected Firebase Login Error: $e');

      CustomGetSnackBar.snackBar(
        title: 'Login Failed',
        message: 'Something went wrong. Please try again',
        position: 'top',
      );
    }
  }

  void checkLogin() {
    final user = _auth.currentUser;

    if (user != null) {
      Get.offAllNamed(AppRoutes.homeScreen);
    }
  }

  @override
  void onClose() {
    userNameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
