import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  final String title;
  final double amount;

  Stats({this.title,this.amount});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width/2,
        height: MediaQuery.of(context).size.width/2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20),)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(this.title, style: TextStyle(fontSize: 30),),
            Text(this.amount.toString(),style: TextStyle(fontSize: 15),)
          ],
        ),
      ),
    );
  }
}
