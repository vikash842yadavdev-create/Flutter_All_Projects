import 'package:e_commerce_app/features/modules/cart_module/presentation/view/cart_screen.dart';
import 'package:e_commerce_app/features/modules/common_widgets/custom_bottom_nav.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/views/home_screen.dart';
import 'package:e_commerce_app/features/modules/notification_module/presentation/view/notification_screen.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/view/profile_screen.dart';
import 'package:flutter/material.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    CartScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),
    //  body: Navigator(
    //     key: Get.nestedKey(1),
    //     onGenerateRoute: (settings) {
    //       return GetPageRoute(page: () => const HomeScreen());
    //     },
    //   ),

      bottomNavigationBar: CustomBottomNav(
        currentIndex: currentIndex,

        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
