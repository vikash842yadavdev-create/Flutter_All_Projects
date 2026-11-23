import 'package:flutter/material.dart';
// import 'package:flutter_database/check.dart';
import 'package:flutter_database/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Home Page", home: HomePage());
  }
}
