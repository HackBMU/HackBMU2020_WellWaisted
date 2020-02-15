import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wellwasted2/Models/DashboardHeader.dart';

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
    );
  }
}
