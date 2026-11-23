import 'package:flutter/material.dart';
import 'package:get_x/get.dart';
import 'package:newproject001/app/modules/home_module/bindings/api_screen_bindings.dart';
import 'package:newproject001/app/modules/home_module/bindings/dioapi_screen_binding.dart';
import 'package:newproject001/app/modules/home_module/bindings/homeScreen_binding.dart';
import 'package:newproject001/app/modules/home_module/bindings/login_binding.dart';
import 'package:newproject001/app/modules/home_module/bindings/profile_screen_binding.dart';
import 'package:newproject001/app/modules/home_module/bindings/signup_binding.dart';
import 'package:newproject001/app/modules/home_module/bindings/splash_binding.dart';
import 'package:newproject001/app/modules/home_module/views/api_screen.dart';
import 'package:newproject001/app/modules/home_module/views/dioapi_screen.dart';
import 'package:newproject001/app/modules/home_module/views/homeScreen.dart';
import 'package:newproject001/app/modules/home_module/views/login_screen.dart';
import 'package:newproject001/app/modules/profile_modules/profile_main_screen.dart';
import 'package:newproject001/app/modules/home_module/views/signup_screen.dart';
import 'package:newproject001/app/modules/home_module/views/splash_screen.dart';

part 'app_pages.dart';

abstract class Routes {
  static const splashScreen = _Paths.splashScreen;
  static const loginScreen = _Paths.loginScreen;
  static const signupScreen = _Paths.signupScreen;
  static const homeScreen = _Paths.homeScreen;
  static const profileScreen = _Paths.profileScreen;
  static const apiScreen = _Paths.apiScreen;
  static const dioApiScreen = _Paths.dioApiScreen;
}

abstract class _Paths {
  static const splashScreen = '/splash';
  static const loginScreen = '/login';
  static const signupScreen = '/signup';
  static const homeScreen = '/homeview';
  static const profileScreen = '/profileview';
  static const apiScreen = '/apiview';
  static const dioApiScreen = '/dioapiview';
}
