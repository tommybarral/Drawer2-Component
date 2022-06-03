import 'package:custom_drawer_component/screens/content_screen.dart';
import 'package:custom_drawer_component/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  late List<ScreenHiddenDrawer> _pages = [];
  bool mainTheme = true;
  double scale = 1;

  @override
  void initState() {
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'HOMEPAGE',
          baseStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.5,
          ),
          selectedStyle: TextStyle(),
          colorLineSelected: Colors.deepPurple,
        ),
        HomeScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'CONTENT PAGE',
          baseStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.5,
          ),
          selectedStyle: TextStyle(),
          colorLineSelected: Colors.deepPurple,
        ),
        ContentScreen(),
      ),
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepPurpleAccent.shade200,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 50,
      contentCornerRadius: 10,
    );
  }
}
