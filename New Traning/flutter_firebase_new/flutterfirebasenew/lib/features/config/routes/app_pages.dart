part of 'app_routes.dart';

abstract class AppPages {
  static const initialPage = AppRoutes.splashView;

  static List<GetPage<dynamic>> routes = [
    getPage(
      name: AppRoutes.splashView,
      page: () => SplashView(),
      binding: SplashViewBindings(),
    ),

    getPage(
      name: AppRoutes.loginView,
      page: () => LoginView(),
      binding: LoginViewBindings(),
    ),
    getPage(
      name: AppRoutes.signUpView,
      page: () => SignupView(),
      binding: SignupViewBindings(),
    ),
    getPage(
      name: AppRoutes.homeView,
      page: () => HomeView(),
      binding: HomeViewBindings(),
    ),
    getPage(
      name: AppRoutes.firestoreView,
      page: () => FirestoreView(),
      binding: FirestoreViewBindings(),
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
    bindings: bindings ?? [],
    transition: transition,
  );
}
