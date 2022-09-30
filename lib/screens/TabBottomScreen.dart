import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/FavoriteItem.dart';
import '../screens/App_Drawer.dart';

import 'Categories_Avito.dart';
import 'filterCategorie.dart';

class TabBottomScreen extends StatefulWidget {
  const TabBottomScreen({super.key});

  @override
  State<TabBottomScreen> createState() => _TabBottomScreenState();
}

class _TabBottomScreenState extends State<TabBottomScreen> {
  Map<int, String> titletapBottom = {
    0: 'Avito',
    1: 'Favorite',
  };
  final List<Widget> _Screen = [
    CategoriesAvito(),
    FavoriteItem(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.blue[50],
          title: Container(
            width: double.infinity,
            // color: Colors.blue,
            // margin: EdgeInsets.only(top: 10),
            child: Text(
              titletapBottom[_currentIndex]!,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        drawer: DrawerScreen(),
        body: _Screen[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          unselectedFontSize: 17,
          selectedFontSize: 19,
          // backgroundColor: Colors.black,
          // par default kayakhed
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'home',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'favorite',
                backgroundColor: Colors.black),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
