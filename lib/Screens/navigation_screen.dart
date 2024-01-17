import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Cart_screen.dart';
import 'package:flutter_application_1/Screens/Favorites_screen.dart';
import 'package:flutter_application_1/Screens/Home_Screen.dart';
import 'package:flutter_application_1/Screens/Porfile_screen.dart';

class Navigationscreen extends StatefulWidget {
  const Navigationscreen({super.key});

  @override
  State<Navigationscreen> createState() => _NavigationscreenState();
}

class _NavigationscreenState extends State<Navigationscreen> {
  int pageIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    Favoritesscreen(),
    Porfilescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      floatingActionButton: SafeArea(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Navigationscreen(),
                ));
          },
          child: Icon(
            Icons.home,
            size: 20,
            color: Colors.white,
          ),
          backgroundColor: Colors.red,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: [
            CupertinoIcons.home,
            CupertinoIcons.cart,
            CupertinoIcons.heart,
            CupertinoIcons.profile_circled,
          ],
          inactiveColor: Colors.black.withOpacity(0.5),
          activeColor: Colors.orange,
          gapLocation: GapLocation.center,
          activeIndex: pageIndex,
          leftCornerRadius: 10,
          iconSize: 25,
          rightCornerRadius: 10,
          elevation: 0,
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          }),
    );
  }
}
