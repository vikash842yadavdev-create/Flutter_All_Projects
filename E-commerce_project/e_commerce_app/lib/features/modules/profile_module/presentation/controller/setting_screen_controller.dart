import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreenController extends GetxController {
  bool notificationsEnabled = true;
  bool darkModeEnabled = false;
  bool biometricEnabled = false;

  String selectedLanguage = 'English';

  String appVersion = '1.0.0';

  void changeNotification(bool value) {
    notificationsEnabled = value;
    update();
  }

  void changeDarkMode(bool value) {
    darkModeEnabled = value;
    update();
  }

  void changeBiometric(bool value) {
    biometricEnabled = value;
    update();
  }

  void changeLanguage() {
    Get.dialog(
      AlertDialog(
        title: const Text('Select Language'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [_languageOption('English'), _languageOption('Hindi')],
        ),
      ),
    );
  }

  Widget _languageOption(String language) {
    return ListTile(
      title: Text(language),
      trailing: selectedLanguage == language ? const Icon(Icons.check) : null,
      onTap: () {
        selectedLanguage = language;
        update();
        Get.back();
      },
    );
  }

  void showAboutApp() {
    Get.dialog(
      AlertDialog(
        title: const Text('About App'),
        content: const Text(
          'Our Fashion App\n\n'
          'A simple e-commerce application for browsing and shopping fashion products.',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
