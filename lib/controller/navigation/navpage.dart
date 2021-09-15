import 'package:automocar/view/account/account.dart';
// import 'package:automocar/view/cars/browse_cars.dart';
// import 'package:automocar/view/notifications/notifications.dart';
// import 'package:automocar/view/templates/bottomnavbar.dart';
// import 'package:automocar/view/book/book-service.dart';
import 'package:automocar/view/home/home.dart';
import 'package:automocar/view/notifications/notifications.dart';
import 'package:automocar/view/search/search.dart';
import 'package:flutter/material.dart';

class NavView extends StatefulWidget {
  const NavView({Key? key}) : super(key: key);

  @override
  _NavViewState createState() => _NavViewState();
}

class _NavViewState extends State<NavView> {
  int _selectedIndex = 0;
  PageController navPageController = PageController();

  void changeNavbarItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
    navPageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: navPageController,
        children: [
          HomeView(),
          SearchView(),
          NotificationsView(),
          AccountView()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: changeNavbarItem,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.layers_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined), label: 'Account'),
        ],
      ),
    );
  }
}
