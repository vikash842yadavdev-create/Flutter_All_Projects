import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playstoreclone/app/modules/apps_module/bindings/apps_screen_bindings.dart';
import 'package:playstoreclone/app/modules/apps_module/view/apps_screen.dart';
import 'package:playstoreclone/app/modules/books_module/bindings/books_screen_bindings.dart';
import 'package:playstoreclone/app/modules/books_module/views/books_screen.dart';
import 'package:playstoreclone/app/modules/games_module/bindings/games_screen_bindings.dart';
import 'package:playstoreclone/app/modules/games_module/views/games_screen.dart';
import 'package:playstoreclone/app/modules/main_module/bindings/main_screen_bindings.dart';
import 'package:playstoreclone/app/modules/main_module/view/main_screen.dart';
import 'package:playstoreclone/app/modules/onboarding_module/bindings/splash_screen_bindings.dart';
import 'package:playstoreclone/app/modules/onboarding_module/view/splash_screen.dart';
import 'package:playstoreclone/app/modules/profile_module/bindings/profile_screen_bindings.dart';
import 'package:playstoreclone/app/modules/profile_module/views/profile_screen.dart';
import 'package:playstoreclone/app/modules/search_module/bindings/search_screen_bindings.dart';
import 'package:playstoreclone/app/modules/search_module/views/search_screen.dart';

part 'app_pages.dart';

abstract class Routes {
  static const splashScreen = _Paths.splashScreen;
  static const mainScreen = _Paths.mainScreen;
  static const appsScreen = _Paths.appsScreen;
  static const gamesScreen = _Paths.gamesScreen;
  static const searchScreen = _Paths.searchScreen;
  static const booksScreen = _Paths.booksScreen;
  static const profileScreen = _Paths.profileScreen;
}

abstract class _Paths {
  static const splashScreen = '/splash';
  static const mainScreen = '/main';
  static const appsScreen = '/apps';
  static const gamesScreen = '/games';
  static const searchScreen = '/search';
  static const booksScreen = '/books';
  static const profileScreen = '/profile';
}
