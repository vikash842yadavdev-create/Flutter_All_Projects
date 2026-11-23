import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playstoreclone/app/modules/apps_module/view/apps_screen.dart';
import 'package:playstoreclone/app/modules/books_module/views/books_screen.dart';
import 'package:playstoreclone/app/modules/games_module/views/games_screen.dart';
import 'package:playstoreclone/app/modules/main_module/controller/main_screen_controller.dart';
import 'package:playstoreclone/app/modules/profile_module/views/profile_screen.dart';
import 'package:playstoreclone/app/modules/search_module/views/search_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Widget> screens = [
    GamesScreen(),
    AppsScreen(),
    SearchScreen(),
    BooksScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainScreenController>(
      builder: (controller) {
        return Scaffold(
          body: screens[controller.currentIndex],

          bottomNavigationBar: NavigationBar(
            height: 70,
            labelTextStyle: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return const TextStyle(
                  color: Color.fromARGB(255, 0, 114, 208),
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                );
              }
              return const TextStyle(
                color: Color.fromARGB(255, 50, 50, 50),
                fontSize: 10,
                fontWeight: FontWeight.bold,
              );
            }),
            selectedIndex: controller.currentIndex,
            onDestinationSelected: controller.changeIndex,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.sports_esports_outlined),
                selectedIcon: Icon(Icons.sports_esports, color: Color.fromARGB(255, 0, 114, 208),
                ),
                label: 'Games',
              ),
              NavigationDestination(
                icon: Icon(Icons.apps_outlined),
                selectedIcon: Icon(Icons.apps, color: Color.fromARGB(255, 0, 114, 208)),
                label: 'Apps',
              ),
              NavigationDestination(
                icon: Icon(Icons.search_outlined),
                selectedIcon: Icon(Icons.search,
                  color: Color.fromARGB(255, 0, 114, 208),
                ),
                label: 'Search',
              ),
              NavigationDestination(
                icon: Icon(Icons.book_outlined),
                selectedIcon: Icon(Icons.book,
                  color: Color.fromARGB(255, 0, 114, 208),
                ),
                label: 'Books',
              ),
              NavigationDestination(
                icon: Icon(Icons.person_outlined),
                selectedIcon: Icon(Icons.person,
                  color: Color.fromARGB(255, 0, 114, 208),
                ),
                label: 'You',
              ),
            ],
          ),
        );
      },
    );
  }
}
