import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfirstproject/bindings/homeView_binding.dart';

import 'package:tfirstproject/bindings/login_binding.dart';
import 'package:tfirstproject/bindings/signup_binding.dart';
import 'package:tfirstproject/bindings/splashbinding.dart';
import 'package:tfirstproject/views/Home_view.dart';
import 'package:tfirstproject/views/login_view.dart';
import 'package:tfirstproject/views/signup_view.dart';
import 'package:tfirstproject/views/splash_view.dart';

part 'app_pages.dart';

abstract class Routes {
  static const splashView = _Paths.splashView;
  static const loginView = _Paths.loginView;
  static const signupView = _Paths.signupView;
  static const homeView = _Paths.homeView;
  // static const home = _Paths.home;
  static const arithmaticView = _Paths.arithmaticView;
  static const switchcase = _Paths.switchcase;
}

abstract class _Paths {
  static const splashView = '/splash';
  static const loginView = '/login';
  static const signupView = '/signup';
  static const homeView = '/homeview';
  // static const home = '/home';
  static const arithmaticView = '/arithmatic-view';
  static const switchcase = '/switchcase';
}
