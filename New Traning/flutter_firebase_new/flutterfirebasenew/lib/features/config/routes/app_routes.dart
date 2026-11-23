import 'package:flutter/material.dart';
import 'package:flutterfirebasenew/features/modules/auth_module/presentation/bindings/login_view_bindings.dart';
import 'package:flutterfirebasenew/features/modules/auth_module/presentation/bindings/signup_view_bindings.dart';
import 'package:flutterfirebasenew/features/modules/auth_module/presentation/views/login_view.dart';
import 'package:flutterfirebasenew/features/modules/auth_module/presentation/views/signup_view.dart';
import 'package:flutterfirebasenew/features/modules/home_module/presentation/bindings/firestore_view_bindings.dart';
import 'package:flutterfirebasenew/features/modules/home_module/presentation/bindings/home_view_bindings.dart';
import 'package:flutterfirebasenew/features/modules/home_module/presentation/views/firestore_view.dart';
import 'package:flutterfirebasenew/features/modules/home_module/presentation/views/home_view.dart';
import 'package:flutterfirebasenew/features/modules/onboarding_module/presentation/bindings/splash_view_bindings.dart';
import 'package:flutterfirebasenew/features/modules/onboarding_module/presentation/views/splash_view.dart';
import 'package:get/get.dart';

part 'app_pages.dart';

abstract class AppRoutes {
  static const String splashView = _AppPath.splashView;
  static const String loginView = _AppPath.loginView;
  static const String signUpView = _AppPath.signUpView;
  static const String homeView = _AppPath.homeView;
  static const String firestoreView = _AppPath.firestoreView;
}

abstract class _AppPath {
  static const String splashView = '/splashview';
  static const String loginView = '/loginview';
  static const String signUpView = '/signupview';
  static const String homeView = '/homeview';
  static const String firestoreView = '/firestoreview';
}
