import 'package:flutter/material.dart';
import 'package:wellwasted2/Pages/UserDashBoard.dart';

void main(){
  runApp(MaterialApp(home: Home(),debugShowCheckedModeBanner: false,));
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UserDashBoard();
  }
}
