import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[
              Text("3 Kilogram - 5 Kilograms",style: TextStyle(fontSize: 30),),
              Text("5 Kilogram - 7 Kilograms",style: TextStyle(fontSize: 30)),
              Text("7 Kilogram - 9 Kilograms",style: TextStyle(fontSize: 30)),
              Text("More than 9 kilograms",style: TextStyle(fontSize: 30))
            ]
          ),
        ),
      ),
    );
  }
}
