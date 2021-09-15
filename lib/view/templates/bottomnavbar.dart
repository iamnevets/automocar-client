import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  PageController navPageController = PageController();

  void changeNavbarItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
    navPageController.animateToPage(index,
        duration: Duration(milliseconds: 1000), curve: Curves.bounceIn);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: changeNavbarItem,
      selectedItemColor: Colors.amber,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.layers), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: 'Notifications'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_box), label: 'Account'),
      ],
    );
  }
}
