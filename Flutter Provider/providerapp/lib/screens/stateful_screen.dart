import 'package:flutter/material.dart';

class StateFulScreen extends StatefulWidget {
  StateFulScreen({super.key});

  @override
  State<StateFulScreen> createState() => _StateFulScreenState();
}

class _StateFulScreenState extends State<StateFulScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    print('Build***************' + count.toString());
    return Scaffold(
      appBar: AppBar(title: Text('Statefull'), centerTitle: true),
      body: Center(child: Text(count.toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
            print(count);
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
