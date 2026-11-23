import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexample/second_screen.dart';

class GetxNavigatorScreen extends StatefulWidget {
  const GetxNavigatorScreen({super.key});

  @override
  State<GetxNavigatorScreen> createState() => _GetxNavigatorScreenState();
}

class _GetxNavigatorScreenState extends State<GetxNavigatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: const Center(child: Text("Home Screen")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const SecondScreen());
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
