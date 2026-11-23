import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Check extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CheckState();
}

class CheckState extends State<Check> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Check Screen')),
      body: Center(
        child: Container(height: 200, width: 200, color: Colors.amber),
      ),
    );
  }
}
