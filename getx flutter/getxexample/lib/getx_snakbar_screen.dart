import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxSnakBarScreen extends StatefulWidget {
  const GetxSnakBarScreen({super.key});

  @override
  State<GetxSnakBarScreen> createState() => _GetxSnakBarScreenState();
}

class _GetxSnakBarScreenState extends State<GetxSnakBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: const Center(child: Text("Home Screen")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.to(const SecondScreen());
          Get.snackbar(
            "Snackbar",
            "This is a snackbar message",
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.blue,
            colorText: Colors.white,
            borderRadius: 10,
          );
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
