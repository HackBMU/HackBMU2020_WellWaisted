import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(50.0)
            ,bottomLeft: Radius.circular(50)
      )),
      child:CircleAvatar(
        radius: 50,
        backgroundColor: Colors.black,
        child: Icon(Icons.person,size: 80,color: Colors.white,),
      )
    );
  }
}
