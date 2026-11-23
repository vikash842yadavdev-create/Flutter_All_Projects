import 'package:e_commerce_app/features/modules/auth_module/presentation/binding/login_screen_bindings.dart';
import 'package:e_commerce_app/features/modules/auth_module/presentation/binding/signup_bindings.dart';
import 'package:e_commerce_app/features/modules/auth_module/presentation/binding/start_shopping_binding.dart';
import 'package:e_commerce_app/features/modules/auth_module/presentation/view/login_screen.dart';
import 'package:e_commerce_app/features/modules/auth_module/presentation/view/signup_screen.dart';
import 'package:e_commerce_app/features/modules/auth_module/presentation/view/start_shopping_screen.dart';
import 'package:e_commerce_app/features/modules/cart_module/presentation/bindings/cart_screen_bindings.dart';
import 'package:e_commerce_app/features/modules/cart_module/presentation/view/cart_screen.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/bindings/all_products_screen_bindings.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/bindings/categories_screen_bindings.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/bindings/home_screen_bindings.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/bindings/main_screen_bindings.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/bindings/product_details_screen_bindings.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/views/all_products_screen.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/views/categories_Screen.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/views/home_screen.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/views/main_screen.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/views/product_details_screen.dart';
import 'package:e_commerce_app/features/modules/notification_module/presentation/bindings/notification_screen_bindings.dart';
import 'package:e_commerce_app/features/modules/notification_module/presentation/view/notification_screen.dart';
import 'package:e_commerce_app/features/modules/onboarding_module/presentation/binding/first_splash_bindings.dart';
import 'package:e_commerce_app/features/modules/onboarding_module/presentation/binding/onboarding_bindings.dart';
import 'package:e_commerce_app/features/modules/onboarding_module/presentation/view/first_splash_screen.dart';
import 'package:e_commerce_app/features/modules/onboarding_module/presentation/view/onboarding_screen.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/bindings/profile_screen_bindings.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/view/profile_screen.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/view/profile_tiles/faq_screen.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/view/profile_tiles/favourites_screen.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/view/profile_tiles/persnal_details_screen.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/view/profile_tiles/privacy_policy_screen.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/view/profile_tiles/setting_screen.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/view/profile_tiles/shipping_address_screen.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/view/profile_tiles/terms_conditions_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'app_pages.dart';

abstract class AppRoutes {
  static const splashScreen = _AppPath.splashScreen;
  static const onboardingScreen = _AppPath.onboardingScreen;
  static const loginScreen = _AppPath.loginScreen;
  static const signUpScreen = _AppPath.signUpScreen;
  static const startShoppingScreen = _AppPath.startShoppingScreen;

  static const mainScreen = _AppPath.mainScreen;

  static const homeScreen = _AppPath.homeScreen;
  static const categoriesScreen = _AppPath.categoriesScreen;
  static const allProductsScreen = _AppPath.allProductsScreen;
  static const productDetailsScreen = _AppPath.productDetailsScreen;

  static const cartScreen = _AppPath.cartScreen;
  static const notificationScreen = _AppPath.notificationScreen;

  static const profileScreen = _AppPath.profileScreen;
  static const personalDetailsScreen = _AppPath.personalDetailsScreen;
  static const settingsScreen = _AppPath.settingsScreen;
  static const faqScreen = _AppPath.faqScreen;
  static const privacyPolicyScreen = _AppPath.privacyPolicyScreen;
  static const termsConditionsScreen = _AppPath.termsConditionsScreen;
  static const shippingAddressScreen = _AppPath.shippingAddressScreen;
  static const favouritesScreen = _AppPath.favouritesScreen;
}

abstract class _AppPath {
  static const splashScreen = '/splash';
  static const onboardingScreen = '/onboarding';
  static const loginScreen = '/login';
  static const signUpScreen = '/signup';
  static const startShoppingScreen = '/startshopping';

  static const mainScreen = '/main';

  static const homeScreen = '/home';
  static const categoriesScreen = '/categories';
  static const allProductsScreen = '/allproducts';
  static const productDetailsScreen = '/productdetails';

  static const cartScreen = '/cart';
  static const notificationScreen = '/notification';

  static const profileScreen = '/profile';
  static const personalDetailsScreen = '/personalDetailsScreen';
  static const settingsScreen = '/settingsScreen';
  static const faqScreen = '/faqScreen';
  static const privacyPolicyScreen = '/privacyPolicyScreen';
  static const termsConditionsScreen = '/termsConditionsScreen';
  static const shippingAddressScreen = '/shippingAddressScreen';
  static const favouritesScreen = '/favouritesScreen';
}
