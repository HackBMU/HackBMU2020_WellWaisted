import 'package:flutter/material.dart';
import 'package:wellwasted2/Models/DashboardHeader.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

class UserDashBoard extends StatefulWidget {
  @override
  _UserDashBoardState createState() => _UserDashBoardState();
}

class _UserDashBoardState extends State<UserDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              DashboardHeader()
            ],
          ),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.home, title: "Home",),
          TabData(iconData: Icons.add_shopping_cart, title: "Shop"),
          TabData(iconData: Icons.person, title: "Profile")
        ],
        circleColor: Colors.black,
        inactiveIconColor: Colors.black,
        onTabChangedListener: (position) {
          setState(() {
          });
        },
      ),
    );
  }
}
