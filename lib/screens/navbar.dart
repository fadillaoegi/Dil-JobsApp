import 'package:diljobsapp/screens/favorit_screen.dart';
import 'package:diljobsapp/screens/home_screen.dart';
import 'package:diljobsapp/screens/notification_screen.dart';
import 'package:diljobsapp/screens/profile_screen.dart';
import 'package:diljobsapp/themes/colors.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      const Home(),
      const Notif(),
      const Favorit(),
      const Profile(),
    ];

    final List<BottomNavigationBarItem> navItem = [
      const BottomNavigationBarItem(icon: Icon(Icons.apps_outlined), label: ""),
      const BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none), label: ""),
      const BottomNavigationBarItem(
          icon: Icon(Icons.heart_broken_rounded), label: ""),
      const BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_sharp), label: ""),
    ];

    final bottomBar = BottomNavigationBar(
      items: navItem,
      onTap: onTap,
      currentIndex: currentIndex,
      selectedItemColor: ColordilJobsApp.primary,
      iconSize: 28.0,
      unselectedItemColor: ColordilJobsApp.grey,
    );

    return Scaffold(
      body: Center(
        child: screens[currentIndex],
      ),
      bottomNavigationBar: bottomBar,
    );
  }
}
