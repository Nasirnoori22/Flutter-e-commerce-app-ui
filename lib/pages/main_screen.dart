import 'package:bottom_bar/bottom_bar.dart';
import 'package:e_commerce_app/pages/home_page.dart';
import 'package:e_commerce_app/pages/profile/profile_main.dart';
import 'package:flutter/material.dart';

import 'cart/card_main.dart';
import 'notifications/notification_main_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  int _currentPage = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Container(
            child: HomePage(),
          ),
          Container(
            child: CartMainScreen(),
          ),
          Container(
            child: NotificationsMainScreen(),
          ),
          Container(
            child: ProfileMain(),
          ),
        ],
        onPageChanged: (index) {
          // Use a better state management solution
          // setState is used for simplicity
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        height: MediaQuery.of(context).size.height * 0.1 - 10,
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.black,
          ),
          BottomBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text('Cart'),
            activeColor: Colors.black,
          ),
          BottomBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notifications'),
            activeColor: Colors.black,
          ),
          BottomBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            activeColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
