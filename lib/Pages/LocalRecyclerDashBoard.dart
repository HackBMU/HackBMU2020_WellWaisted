import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wellwasted2/Models/DashboardHeader.dart';
import 'package:wellwasted2/Models/Stats.dart';

class LocalRecyclerDashBoard extends StatefulWidget {
  @override
  _LocalRecyclerDashBoardState createState() => _LocalRecyclerDashBoardState();
}

class _LocalRecyclerDashBoardState extends State<LocalRecyclerDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            DashboardHeader(),
            SizedBox(height: 25,width: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              Stats(title:"Plastic",amount:100),
              Stats(title:"Paper",amount:100),
            ],),
            SizedBox(height: 25,width: 25,),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Stats(title:"Scrap",amount:100),
              Stats(title:"House Visits",amount: 100,)
            ],)
          ],
        ),
      ),
    );
  }
}
