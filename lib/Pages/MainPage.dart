// ignore_for_file: file_names

import 'package:exam/Pages/OrdersPage.dart';
import 'package:exam/Pages/ProfilePage.dart';
import 'package:exam/componants/MainPage/MainPageContent.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = <Widget>[
    const MainPageContent(),
    const OrdersPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(
          color: Colors.deepPurple.shade900,
        ),
        selectedItemColor: Colors.deepPurple.shade900,
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          //Chefz
          BottomNavigationBarItem(
            icon: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(14)),
                padding: const EdgeInsets.all(8),
                child: const Icon(
                  Icons.fastfood_outlined,
                  size: 18,
                  color: Colors.white,
                )),
            label: 'Chefz',
            activeIcon: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple.shade900,
                    borderRadius: BorderRadius.circular(14)),
                padding: const EdgeInsets.all(8),
                child: const Icon(
                  Icons.fastfood_outlined,
                  size: 18,
                  color: Colors.white,
                )),
          ),
          //Orders
          BottomNavigationBarItem(
            icon: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(14)),
                padding: const EdgeInsets.all(8),
                child: const Icon(
                  Icons.format_list_bulleted_rounded,
                  size: 18,
                  color: Colors.white,
                )),
            label: 'Orders',
            activeIcon: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple.shade900,
                    borderRadius: BorderRadius.circular(14)),
                padding: const EdgeInsets.all(8),
                child: const Icon(
                  Icons.format_list_bulleted_rounded,
                  size: 18,
                  color: Colors.white,
                )),
          ),
          //Profile
          BottomNavigationBarItem(
            icon: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(14)),
                padding: const EdgeInsets.all(8),
                child: const Icon(
                  Icons.person_2_outlined,
                  size: 18,
                  color: Colors.white,
                )),
            label: 'Profile',
            activeIcon: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple.shade900,
                    borderRadius: BorderRadius.circular(14)),
                padding: const EdgeInsets.all(8),
                child: const Icon(
                  Icons.person_2_outlined,
                  size: 18,
                  color: Colors.white,
                )),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
