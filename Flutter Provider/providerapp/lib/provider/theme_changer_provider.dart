import 'package:flutter/material.dart';

class ThemeChangerProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void setThemeMode(ThemeMode? themeMode) {
    if (themeMode == null) return;
    _themeMode = themeMode;
    notifyListeners();
  }
}
