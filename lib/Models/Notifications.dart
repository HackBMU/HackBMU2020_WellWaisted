import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  final String notifications;
  NotificationView({this.notifications});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.black,
      borderRadius: BorderRadius.all(Radius.circular(20))),
      child: ListTile(
        leading: Icon(Icons.person,color: Colors.white,size: 50,),
        title: notifications == null ? Container(child: Text("Either cancelled or didn't exit"),): Text(this.notifications,style: TextStyle(fontSize: 20,color: Colors.white),),)
    );
  }
}
