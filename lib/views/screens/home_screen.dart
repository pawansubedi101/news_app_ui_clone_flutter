import 'package:flutter/material.dart';
import 'package:news_app_ui_clone/views/pages/home_page.dart';
import 'package:news_app_ui_clone/views/pages/notifications_page.dart';
import 'package:news_app_ui_clone/views/pages/search_page.dart';
import 'package:news_app_ui_clone/views/pages/stats_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _pages = [
    const NewsHomePage(),
    const SearchPage(),
    const NotificationsPage(),
    const StatsPage(),
  ];
  final List<BottomNavigationBarItem> _items = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.dashboard),
      label: "Dashboard",
    ),
    const BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.notifications), label: "Notifications"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.show_chart), label: "Dashboard"),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 20,
        type: BottomNavigationBarType.fixed,
        items: _items,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
