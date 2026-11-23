import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxLightdarkthemeScreen extends StatefulWidget {
  const GetxLightdarkthemeScreen({super.key});

  @override
  State<GetxLightdarkthemeScreen> createState() => _GetxLightdarkthemeScreenState();
}

class _GetxLightdarkthemeScreenState extends State<GetxLightdarkthemeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: Column(
        children: [
          ListTile(
            title: const Text("Light Theme"),
            subtitle: Text('Tap to switch to light theme'),
            onTap: () {
              Get.bottomSheet(
                Container(
                  height: 300,
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(  Icons.light_mode),
                        title: const Text("Light Theme"),

                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(  Icons.dark_mode),
                        title: const Text("Dark Theme"),

                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.to(const SecondScreen());
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
