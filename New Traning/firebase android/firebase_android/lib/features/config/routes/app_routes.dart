import 'package:firebase_android/features/modules/auth_module/presentation/binding/login_screen_bindings.dart';
import 'package:firebase_android/features/modules/auth_module/presentation/binding/signup_bindings.dart';
import 'package:firebase_android/features/modules/auth_module/presentation/view/login_screen.dart';
import 'package:firebase_android/features/modules/auth_module/presentation/view/signup_screen.dart';
import 'package:firebase_android/features/modules/home_module/presentation/bindings/home_screen_bindings.dart';
import 'package:firebase_android/features/modules/home_module/presentation/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'app_pages.dart';

abstract class AppRoutes {
  static const loginScreen = _AppPath.loginScreen;
  static const signUpScreen = _AppPath.signUpScreen;
  static const homeScreen = _AppPath.homeScreen;
}

abstract class _AppPath {
  static const loginScreen = '/login';
  static const signUpScreen = '/signup';
  static const homeScreen = '/home';
}
