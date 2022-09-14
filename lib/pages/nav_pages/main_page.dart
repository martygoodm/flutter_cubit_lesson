import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc_dbtech/pages/detail_page.dart';
import 'package:flutter_bloc_dbtech/pages/home_page.dart';
import 'package:flutter_bloc_dbtech/pages/nav_pages/bar_item_page.dart';
import 'package:flutter_bloc_dbtech/pages/nav_pages/my_page.dart';
import 'package:flutter_bloc_dbtech/pages/nav_pages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    // DetailPage(),
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // unselectedFontSize: 0,
        // selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.apps,
            ),
          ),
          BottomNavigationBarItem(
            label: "Bar",
            icon: Icon(
              Icons.bar_chart_sharp,
            ),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(
              Icons.search,
            ),
          ),
          BottomNavigationBarItem(
            label: "My",
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
    );
  }
}