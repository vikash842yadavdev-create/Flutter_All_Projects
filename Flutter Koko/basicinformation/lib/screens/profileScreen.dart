import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      body: Container(
        color: Colors.red[200],
        child: Center(child: Text('Profile Screen Content')),
      ),
    );
  }
}
