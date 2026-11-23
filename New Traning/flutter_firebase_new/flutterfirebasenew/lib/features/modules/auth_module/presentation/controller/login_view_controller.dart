import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirebasenew/features/config/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginViewController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> login({required String email, required String password}) async {
    if (email.trim().isEmpty) {
      Get.snackbar('Error', 'Please enter email');
    } else if (!GetUtils.isEmail(email.trim())) {
      Get.snackbar('Error', 'Please enter valid email');
    } else if (password.isEmpty) {
      Get.snackbar('Error', 'Please enter password');
    } else {
      try {
        await _auth.signInWithEmailAndPassword(
          email: email.trim(),
          password: password,
        );

        Get.snackbar('Success', 'Login successful');

        Get.offNamed(AppRoutes.homeView);
      } on FirebaseAuthException catch (e) {
        debugPrint('Firebase Error Code: ${e.code}');
        debugPrint('Firebase Error Message: ${e.message}');

        if (e.code == 'user-not-found') {
          Get.snackbar('Error', 'No account found with this email');
        } else if (e.code == 'wrong-password') {
          Get.snackbar('Error', 'Incorrect password');
        } else if (e.code == 'invalid-credential') {
          Get.snackbar('Error', 'Invalid email or password');
        } else if (e.code == 'user-disabled') {
          Get.snackbar('Error', 'This account has been disabled');
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

  Future<void> googleLogin() async {
    print("Google Login method called");

    try {
      // Get Google Sign-In instance
      final GoogleSignIn googleSignIn = GoogleSignIn.instance;

      // Initialize Google Sign-In
      await googleSignIn.initialize();

      // Open Google Sign-In
      final GoogleSignInAccount googleUser = await googleSignIn.authenticate();

      // Get Google authentication data
      final GoogleSignInAuthentication googleAuth = googleUser.authentication;

      // Create Firebase credential using Google ID token
      final OAuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
      );

      // Sign in to Firebase
      final UserCredential userCredential = await FirebaseAuth.instance
          .signInWithCredential(credential);

      // Get Firebase user
      final User? user = userCredential.user;

      print("Google Login Successful");
      print("Name: ${googleUser.displayName}");
      print("Email: ${googleUser.email}");
      print("Photo: ${googleUser.photoUrl}");
      print("Firebase UID: ${user?.uid}");

      // Move to Home Screen
      Get.offAllNamed(AppRoutes.homeView);
    } on GoogleSignInException catch (e) {
      print("Google Sign-In Error: ${e.code}");
      print("Description: ${e.description}");
    } on FirebaseAuthException catch (e) {
      print("Firebase Auth Error: ${e.message}");
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
