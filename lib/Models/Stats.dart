import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  final String title;
  final double amount;

  Stats({this.title,this.amount});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width/2,
        height: MediaQuery.of(context).size.width/2,
        decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(this.title, style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
            Text(this.amount.toString(),style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
