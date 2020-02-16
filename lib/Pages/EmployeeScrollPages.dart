import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:wellwasted2/Pages/EmployeeDashBoard.dart';
import 'package:wellwasted2/Pages/Iventory.dart';
import 'package:wellwasted2/Pages/NotificationTab.dart';

class EmployeeScrollPages extends StatefulWidget {
  @override
  _EmployeeScrollPagesState createState() => _EmployeeScrollPagesState();
}

class _EmployeeScrollPagesState extends State<EmployeeScrollPages> {

  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            EmployeeDashBoard(),
            Inventory(),
            Container(color: Colors.blue,),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: Text('Home',style: TextStyle(color: Colors.black),),
              icon: Icon(Icons.home, color: Colors.black,)
          ),
          BottomNavyBarItem(
              title: Text('Inventory',style: TextStyle(color: Colors.black),),
              icon: Icon(Icons.local_convenience_store,color: Colors.black,)
          ),
          BottomNavyBarItem(
              title: Text('Settings',style: TextStyle(color: Colors.black),),
              icon: Icon(Icons.settings,color: Colors.black,)
          ),
        ],
      ),
    );
  }
}


