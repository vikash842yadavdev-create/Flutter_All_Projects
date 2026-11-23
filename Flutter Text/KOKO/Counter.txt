import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int counter = 0;

  void updateaddcounter() {
    setState(() {
      counter += 1;
    });
  }

  void updatesubcounter() {
    setState(() {
      counter -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter App', style: TextStyle(fontSize: 30)),
            SizedBox(height: 20),
            Text('$counter', style: TextStyle(fontSize: 40)),
            SizedBox(height: 20),
            ElevatedButton(onPressed: updateaddcounter, child: Text('Add')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: updatesubcounter,
              child: Text('Subtract'),
            ),
          ],
        ),
      ),
    );
  }
}
