import 'package:basicinformation/screens/firstScreen.dart';
import 'package:basicinformation/screens/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
      routes: {'/home': (context) => HomeScreen()},
    );
  }
}
