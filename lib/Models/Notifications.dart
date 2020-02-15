import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.black,
      borderRadius: BorderRadius.all(Radius.circular(20))),
      child: ListTile(
        leading: Icon(Icons.person,color: Colors.white,size: 100,),
        title: Text("Hello vishnu,Thank you for your request."
            " We’ll send a confirmation when the recycler depart."
            "If you would like to view the status of the recycler"
            " please visit at WellWasted.com",style: TextStyle(fontSize: 20,color: Colors.white),),)
    );
  }
}
