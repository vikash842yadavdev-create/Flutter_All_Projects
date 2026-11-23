part of 'app_routes.dart';

abstract class AppPages {
  static const initialPage = AppRoutes.splashScreen;

  static List<GetPage<dynamic>> routes = [
    getPage(
      name: _AppPath.splashScreen,
      page: () => const FisrtSplashScreen(),
      binding: FirstSplashBindings(),
    ),
    getPage(
      name: _AppPath.onboardingScreen,
      page: () => const OnboardingScreen(),
      binding: OnboardingBindings(),
    ),
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
      name: _AppPath.startShoppingScreen,
      page: () => const StartShoppingScreen(),
      binding: StartShoppingBinding(),
    ),

    getPage(
      name: _AppPath.mainScreen,
      page: () => const MainScreen(),
      binding: MainScreenBindings(),
    ),

    getPage(
      name: _AppPath.homeScreen,
      page: () => const HomeScreen(),
      binding: HomeScreenBindings(),
    ),
    getPage(
      name: _AppPath.categoriesScreen,
      page: () => const CategoriesScreen(),
      binding: CategoriesScreenBindings(),
    ),
    getPage(
      name: _AppPath.allProductsScreen,
      page: () => const AllProductsScreen(),
      binding: AllProductsScreenBindings(),
    ),
    getPage(
      name: _AppPath.productDetailsScreen,
      page: () => const ProductDetailsScreen(),
      binding: ProductDetailsScreenBindings(),
    ),

    getPage(
      name: _AppPath.cartScreen,
      page: () => const CartScreen(),
      binding: CartScreenBindings(),
    ),
    getPage(
      name: _AppPath.notificationScreen,
      page: () => const NotificationScreen(),
      binding: NotificationScreenBindings(),
    ),
    getPage(
      name: _AppPath.profileScreen,
      page: () => const ProfileScreen(),
      binding: ProfileScreenBindings(),
    ),
    GetPage(
      name: AppRoutes.personalDetailsScreen,
      page: () => const PersonalDetailsScreen(),
    ),

    GetPage(name: AppRoutes.settingsScreen, page: () => const SettingsScreen()),
    GetPage(name: AppRoutes.faqScreen, page: () => const FaqScreen()),
    GetPage(
      name: AppRoutes.privacyPolicyScreen,
      page: () => const PrivacyPolicyScreen(),
    ),
    GetPage(
      name: AppRoutes.termsConditionsScreen,
      page: () => const TermsConditionsScreen(),
    ),
    GetPage(
      name: AppRoutes.shippingAddressScreen,
      page: () => const ShippingAddressScreen(),
    ),
    GetPage(
      name: AppRoutes.favouritesScreen,
      page: () => const FavouritesScreen(),
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
