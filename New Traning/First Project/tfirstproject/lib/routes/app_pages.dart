// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

part of 'app_routes.dart';

abstract class AppPages {
  static const initialPage = Routes.splashView;

  static List<GetPage<dynamic>> routes = [
    getPage(
      name: _Paths.splashView,
      page: SplashView(),
      binding: SplashBinding(),
    ),
    getPage(name: _Paths.loginView, page: LoginView(), binding: LoginBinding()),
    getPage(
      name: _Paths.signupView,
      page: SignupView(),
      binding: SignupBinding(),
    ),
    getPage(
      name: _Paths.homeView,
      page: HomeView(),
      binding: HomeviewBinding(),
    ),
    // getPage(name: _Paths.home, page: HomeView(), binding: HomeBinding()),
  ];
}

GetPage<dynamic> getPage({
  required String name,
  required Widget page,
  Bindings? binding,
  Transition? transition,
  List<Bindings>? bindings,
}) {
  return GetPage(
    name: name,
    page: () => page,
    binding: binding,
    transition: transition,
    bindings: bindings ?? [],
  );
}
