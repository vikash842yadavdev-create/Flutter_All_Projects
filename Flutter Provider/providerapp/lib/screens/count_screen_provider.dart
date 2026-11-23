import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/provider/count_provider.dart';

class HomeProviderScreen extends StatefulWidget {
  const HomeProviderScreen({super.key});

  @override
  State<HomeProviderScreen> createState() => _HomeProviderScreenState();
}

class _HomeProviderScreenState extends State<HomeProviderScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final changeProvider = Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      changeProvider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    final changeProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('Provider'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Consumer<CountProvider>(
          builder: (context, value, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  DateTime.now().hour.toString() +
                      ":" +
                      DateTime.now().minute.toString() +
                      ":" +
                      DateTime.now().second.toString(),
                ),
                Text(value.count.toString()),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
