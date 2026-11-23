import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_ecommerce_app/firebase_options.dart';
import 'package:sneaker_ecommerce_app/models/cart.dart';
import 'package:sneaker_ecommerce_app/screens/about_screen.dart';
import 'package:sneaker_ecommerce_app/screens/email_pass_screen.dart';
import 'package:sneaker_ecommerce_app/screens/login_screen.dart';
import 'package:sneaker_ecommerce_app/screens/main_home_screen.dart';
import 'package:sneaker_ecommerce_app/screens/intro_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // 👈 REQUIRED
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroScreen(),
        routes: {
          '/home': (context) => const MainHomeScreen(),
          '/about': (context) => const AboutScreen(),
          '/login': (context) => const LoginScreen(),
          '/email_pass': (context) => const EmailPassScreen(),
        },
      ),
    );
  }
}
