import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/provider/theme_changer_provider.dart';

class ThemeChangerScreen extends StatefulWidget {
  const ThemeChangerScreen({super.key});

  @override
  State<ThemeChangerScreen> createState() => _ThemeChangerScreenState();
}

class _ThemeChangerScreenState extends State<ThemeChangerScreen> {
  @override
  Widget build(BuildContext context) {
    final themechanger = Provider.of<ThemeChangerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Changer'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: const Text('Light Mode'),
            secondary: const Icon(Icons.light_mode),
            value: ThemeMode.light,
            groupValue: themechanger.themeMode,
            onChanged: themechanger.setThemeMode,
          ),

          RadioListTile<ThemeMode>(
            title: const Text('Dark Mode'),
            secondary: const Icon(Icons.dark_mode),
            value: ThemeMode.dark,
            groupValue: themechanger.themeMode,
            onChanged: themechanger.setThemeMode,
          ),

          RadioListTile<ThemeMode>(
            title: const Text('System Mode'),
            secondary: const Icon(Icons.brightness_auto),
            value: ThemeMode.system,
            groupValue: themechanger.themeMode,
            onChanged: themechanger.setThemeMode,
          ),
        ],
      ),
    );
  }
}
