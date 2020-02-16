import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wellwasted2/Models/DashboardHeader.dart';
import 'package:wellwasted2/Models/ShopProducts.dart';
import 'package:wellwasted2/Models/Stats.dart';


class EmployeeDashBoard extends StatefulWidget {
  @override
  _EmployeeDashBoardState createState() => _EmployeeDashBoardState();
}

class _EmployeeDashBoardState extends State<EmployeeDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            DashboardHeader(display: 1,name: "Isha Sharma",),
            
            SizedBox(height: 25,width: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Stats(title:"Items Sold",amount:93),
                Stats(title:"Earning(INR)",amount:30000),
              ],),
            SizedBox(height: 25,width: 25,),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Stats(title:"Profit %",amount: 51,),
                Stats(title:"Referrals",amount: 100,)
              ],)
          ],
        ),
      ),
    );
  }
}
