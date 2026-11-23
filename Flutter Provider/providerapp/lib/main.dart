import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/provider/count_provider.dart';
import 'package:providerapp/provider/slider_provider.dart';
import 'package:providerapp/provider/theme_changer_provider.dart';
// import 'package:providerapp/screens/count_screen_provider.dart';
// import 'package:providerapp/screens/slider_screen_provider.dart';
import 'package:providerapp/screens/theme_changer_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => SliderProvider()),
        ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
      ],
      child: Consumer<ThemeChangerProvider>(
        builder: (context, themeChanger, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: themeChanger.themeMode,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            home: const ThemeChangerScreen(),
          );
        },
      ),
    );
  }
}
