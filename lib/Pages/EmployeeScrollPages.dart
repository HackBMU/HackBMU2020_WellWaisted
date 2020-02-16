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
            Container(
              child: ListView(
                children: <Widget>[
                  ListTile(leading:Icon(Icons.person,size: 50,color: Colors.green,),title: Text("Ram singh, 934798147981,",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),),
                  ListTile(leading:Icon(Icons.person,size: 50,color: Colors.green,),title: Text("Nikhil, 934798147981,",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),),
                  ListTile(leading:Icon(Icons.person,size: 50,color: Colors.green,),title: Text("Ankit, 934798147981,",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),),
                  ListTile(leading:Icon(Icons.person,size: 50,color: Colors.green,),title: Text("Sahil, 934798147981,",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),),
                ],
              ),
            )
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
              title: Text('Connections',style: TextStyle(color: Colors.black,fontSize: 12),),
              icon: Icon(Icons.people,color: Colors.black,)
          ),
        ],
      ),
    );
  }
}


