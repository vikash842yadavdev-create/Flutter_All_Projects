import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class GetxLanguagechangeScreen extends StatefulWidget {
  const GetxLanguagechangeScreen({super.key});

  @override
  State<GetxLanguagechangeScreen> createState() =>
      _GetxLanguagechangeScreenState();
}

class _GetxLanguagechangeScreenState extends State<GetxLanguagechangeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Language Change Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("hello".tr, style: const TextStyle(fontSize: 30)),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                var locale = const Locale('zh', 'CN');
                Get.updateLocale(locale);
              },
              child: const Text("Chinese"),
            ),

            ElevatedButton(
              onPressed: () {
                var locale = const Locale('en', 'US');
                Get.updateLocale(locale);
              },
              child: const Text("English"),
            ),
          ],
        ),
      ),
    );
  }
}
