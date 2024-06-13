import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../utils/bottom_nav_bar_icons.dart';
import '../screens/learn_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/support_screen.dart';
import '../screens/library_screen.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});
  final navigationKey = GlobalKey<CurvedNavigationBarState>();

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    final List screens = [
      const LearnScreen(),
      const ProfileScreen(),
      const SupportScreen(),
      const LibraryScreen()
    ];

    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        bottomNavigationBar: CurvedNavigationBar(
          key: navigationKey,
          index: selectedIndex,
          color: const Color(0xFF2A3E34),
          backgroundColor: const Color(0x00000000),
          animationDuration: const Duration(milliseconds: 400),
          height: MediaQuery.of(context).size.height * 60 / 844,
          items: navBarIcons,
        ),
        body: screens[selectedIndex]);
  }
}
