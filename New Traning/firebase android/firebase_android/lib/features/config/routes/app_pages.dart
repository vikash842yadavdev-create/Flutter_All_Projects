part of 'app_routes.dart';

abstract class AppPages {
  static const initialPage = AppRoutes.loginScreen;

  static List<GetPage<dynamic>> routes = [


    getPage(
      name: _AppPath.loginScreen,
      page: () => const LoginScreen(),
      binding: LoginScreenBindings(),
    ),
    getPage(
      name: _AppPath.signUpScreen,
      page: () => const SignupScreen(),
      binding: SignupBindings(),
    ),
    getPage(
      name: _AppPath.homeScreen,
      page: () => const HomeScreen(),
      binding: HomeScreenBindings(),
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
