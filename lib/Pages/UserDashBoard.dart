import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wellwasted2/Models/DashboardHeader.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'Shop.dart';

class UserDashBoard extends StatefulWidget {
  @override
  _UserDashBoardState createState() => _UserDashBoardState();
}

class _UserDashBoardState extends State<UserDashBoard> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              DashboardHeader(),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(10),
                child:Text("Call RaddiWala",style: TextStyle(color: Colors.white,fontSize: 30),),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(50))
                ),
              ),
              ListTile(leading : Icon(Icons.web_asset,color: Colors.black,),title: Text("3 Kilogram - 5 Kilograms",style: TextStyle(fontSize: 25,color: Colors.black),),),
              ListTile(leading : Icon(Icons.web_asset,color: Colors.black,),title: Text("5 Kilogram - 7 Kilograms",style: TextStyle(fontSize: 25,color: Colors.black),),),
              ListTile(leading : Icon(Icons.web_asset,color: Colors.black,),title: Text("7 Kilogram - 9 Kilograms",style: TextStyle(fontSize: 25,color: Colors.black),),),
              ListTile(leading : Icon(Icons.web_asset,color: Colors.black,),title: Text("More Than 9 Kilograms",style: TextStyle(fontSize: 25,color: Colors.black),),),
            ],
          ),
        ),
      ),
    );
  }
}
