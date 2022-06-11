import 'package:ecomapp/screens/cart_screen/cart_screen.dart';
import 'package:ecomapp/screens/home_screen/home_screen.dart';
import 'package:ecomapp/screens/profile_screen/profile_screen.dart';
import 'package:ecomapp/screens/wishlist_screen/wishlist_screen.dart';
import 'package:flutter/material.dart';

import 'all_products/all_products_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int _pageIndex = 0;
  final _screens = <Widget>[
    const HomeScreen(),
    const AllProductsScreen(),
    const CartScreen(),
    const WishlistScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black54.withOpacity(0.2),
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        currentIndex: _pageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.widgets_rounded,
                ),
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: _pageIndex == 0
                        ? Colors.black.withOpacity(0.8)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.store_rounded,
                ),
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: _pageIndex == 1
                        ? Colors.black.withOpacity(0.8)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.shopping_cart_rounded,
                ),
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: _pageIndex == 2
                        ? Colors.black.withOpacity(0.8)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.favorite_rounded,
                ),
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: _pageIndex == 3
                        ? Colors.black.withOpacity(0.8)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.person,
                ),
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: _pageIndex == 4
                        ? Colors.black.withOpacity(0.8)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ],
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
