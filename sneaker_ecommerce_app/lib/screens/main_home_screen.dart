import 'package:flutter/material.dart';
import 'package:sneaker_ecommerce_app/components/google_bottom_nav_bar.dart';
import 'package:sneaker_ecommerce_app/screens/cart_screen.dart';
import 'package:sneaker_ecommerce_app/screens/shop_screen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  //Int to select tab index

  int _selectedIndex = 0;

  //handle tab changes here
  void bottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    //pages here
    const ShopScreen(),
    const CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),

          child: Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu, color: Colors.black, size: 25),
              onPressed: () {
                // Handle menu button press
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
      ),

      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //logo
                DrawerHeader(
                  child: Image.asset(
                    'assets/images/nike.png',
                    color: Colors.white,
                  ),
                ),

                //menu items
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(Icons.home, color: Colors.white),
                    title: const Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      // Handle Home tap
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 25.0),

                  child: ListTile(
                    leading: const Icon(Icons.info, color: Colors.white),
                    title: const Text(
                      'About',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      // Handle Cart tap
                      Navigator.pushNamed(context, '/about');
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: const Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Handle Logout tap
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ),
          ],
        ),
      ),

      body: pages[_selectedIndex],

      backgroundColor: Colors.grey[300],
      bottomNavigationBar: GoogleBottomNavBar(
        onTabChange: (index) => bottomNavBar(index),
      ),
    );
  }
}
