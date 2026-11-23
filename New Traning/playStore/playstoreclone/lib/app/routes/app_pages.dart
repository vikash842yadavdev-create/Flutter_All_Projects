part of 'app_routes.dart';

abstract class AppPages {
  static const initialPage = Routes.splashScreen;

  static List<GetPage<dynamic>> routes = [
    getPage(
      name: _Paths.splashScreen,
      page: () => const SplashScreen(),
      binding: SplashScreenBindings(),
    ),
    getPage(
      name: _Paths.mainScreen,
      page: () => MainScreen(),
      binding: MainScreenBindings(),
    ),
    getPage(
      name: _Paths.appsScreen,
      page: () => const AppsScreen(),
      binding: AppsScreenBindings(),
    ),
    getPage(
      name: _Paths.gamesScreen,
      page: () => const GamesScreen(),
      binding: GamesScreenBindings(),
    ),
    getPage(
      name: _Paths.searchScreen,
      page: () => const SearchScreen(),
      binding: SearchScreenBindings(),
    ),
    getPage(
      name: _Paths.booksScreen,
      page: () => const BooksScreen(),
      binding: BooksScreenBindings(),
    ),
    getPage(
      name: _Paths.profileScreen,
      page: () => const ProfileScreen(),
      binding: ProfileScreenBindings(),
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
