import 'package:flutter/material.dart';
import 'package:wellwasted2/Pages/EmployeeScrollPages.dart';
import 'package:wellwasted2/Pages/LocalRecyclerDashBoard.dart';
import 'package:wellwasted2/Pages/LocalRecyclerScroll.dart';
import 'package:wellwasted2/Pages/UserScrollPages.dart';

class LoginScreens extends StatefulWidget {
  @override
  _LoginScreensState createState() => _LoginScreensState();
}

class _LoginScreensState extends State<LoginScreens> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        RaisedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(context){
            return EmployeeScrollPages();
          }));
        },
        child: Text("I am Employee"),),
        RaisedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder:(context){
          return UserScrollPages();
        }));
        },
        child: Text("I am User"),),
        RaisedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(context){
            return LocalRecyclerScrollPages();
          }));
        },
        child: Text("I am Radddiwala"),),
      ],
    );
  }
}
