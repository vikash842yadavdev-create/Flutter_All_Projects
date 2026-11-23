part of 'app_routes.dart';

abstract class AppPages {
  static const initialPage = Routes.splashScreen;

  static List<GetPage<dynamic>> routes = [
    getPage(
      name: _Paths.splashScreen,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    getPage(
      name: _Paths.loginScreen,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    getPage(
      name: _Paths.signupScreen,
      page: () => SignupScreen(),
      binding: SignupBinding(),
    ),
    getPage(
      name: _Paths.homeScreen,
      page: () => Homescreen(),
      binding: HomescreenBinding(),
    ),
    getPage(
      name: _Paths.profileScreen,
      page: () => ProfileScreen(),
      binding: ProfileScreenBinding(),
    ),
    getPage(
      name: _Paths.apiScreen,
      page: () => ApiScreen(),
      binding: ApiScreenBindings(),
    ),
    getPage(
      name: _Paths.dioApiScreen,
      page: () => DioapiScreen(),
      binding: DioapiScreenBinding(),
    ),
  ];
}

GetPage<dynamic> getPage({
  required String name,
  required Widget Function() page,
  Bindings? binding,
  Transition? transition,
  List<Bindings>? bindings,
}) {
  return GetPage(
    name: name,
    page: page,
    binding: binding,
    transition: transition,
    bindings: bindings ?? [],
  );
}
