import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:wellwasted2/Models/DashboardHeader.dart';
import 'package:wellwasted2/Models/Stats.dart';
import 'package:wellwasted2/Pages/UserDashBoard.dart';
import 'package:wellwasted2/Pages/UserNotifies.dart';
class UserScrollPages extends StatefulWidget {
  @override
  _UserScrollPagesState createState() => _UserScrollPagesState();
}

class _UserScrollPagesState extends State<UserScrollPages> {

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
            UserDashBoard(),
            UserNotifies(),
            Scaffold(body: Container(
              child: Column(
                children: <Widget>[
                  DashboardHeader(padding:50,name: "Ankita Sharma",address: "375,VV Nagar, Ajmeri Gate, Jaipur",),
                  SizedBox(height: 25,width: 25,),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text("Ankita Sharma",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                        Text("Mobile No.: 280w42380",style: TextStyle(color:Colors.green,fontWeight: FontWeight.bold),),
                        Text("375,VV Nagar, Ajmeri Gate, Jaipur",style: TextStyle(color:Colors.green,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Stats(title:"Plastic",amount:100),
                        Stats(title:"Paper",amount:100),
                      ],),
                  ),
                  SizedBox(height: 25,width: 25,),
                ],
              ),
            ),),
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
              title: Text('Notifications',style: TextStyle(color: Colors.black),),
              icon: Icon(Icons.notifications,color: Colors.black,)
          ),
          BottomNavyBarItem(
              title: Text('Profile',style: TextStyle(color: Colors.black),),
              icon: Icon(Icons.person,color: Colors.black,)
          ),
        ],
      ),
    );
  }
}


