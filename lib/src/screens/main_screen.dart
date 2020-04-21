import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodinfo/src/pages/favorite_page.dart';
import 'package:foodinfo/src/pages/profile_page.dart';

import '../pages/home_page.dart';
import '../pages/order_page.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;

  List<Widget> pages;
  Widget currentPage;

  HomePage homePage;
  OrderPage orderPage;
  FavoritePage favoritePage;
  ProfilePage profilePage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homePage = HomePage();
    orderPage = OrderPage();
    favoritePage = FavoritePage();
    profilePage = ProfilePage();
    pages = [homePage, orderPage, favoritePage, profilePage];

    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        showElevation: true,
        selectedIndex: currentTabIndex,
        onItemSelected: (index){
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text('Home'),
            inactiveColor: Colors.black45,
            icon: Icon(Icons.home),
              textAlign: TextAlign.center,
            activeColor: Colors.orangeAccent
          ),
          BottomNavyBarItem(
              title: Text('Orders'),
              inactiveColor: Colors.black45,
              textAlign: TextAlign.center,
              icon: Icon(Icons.shopping_cart),
              activeColor: Colors.red
          ),
          BottomNavyBarItem(
              title: Text('Favorite'),
              inactiveColor: Colors.black45,
              textAlign: TextAlign.center,
              icon: Icon(Icons.favorite),
              activeColor: Colors.cyan
          ),
          BottomNavyBarItem(
              title: Text('Profile'),
              icon: Icon(Icons.person),
              inactiveColor: Colors.black45,
              textAlign: TextAlign.center,
              activeColor: Colors.green
          ),
        ],
      ),
      body: currentPage,
    );
  }
}
