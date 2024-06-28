import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../utils/bottom_nav_bar_icons.dart';
import '../screens/learn_screen.dart';
import '../screens/profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  final navigationKey = GlobalKey<CurvedNavigationBarState>();

  @override
  Widget build(BuildContext context) {
    final List screens = <Widget>[
      const LearnScreen(),
      // const LibraryScreen(),
      // const SupportScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: screens[selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        key: navigationKey,
        index: selectedIndex,
        color: const Color(0xFF2A3E34),
        backgroundColor: const Color(0x00000000),
        animationDuration: const Duration(milliseconds: 400),
        height: MediaQuery.of(context).size.height * 60 / 844,
        items: navBarIcons,
        onTap: (index) {
          setState(() => selectedIndex = index);
        },
      ),
    );
  }
}
