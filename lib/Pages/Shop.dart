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
        color: Colors.black,
        margin: EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[
              ListTile(leading : Icon(Icons.web_asset,color: Colors.white,),title: Text("3 Kilogram - 5 Kilograms",style: TextStyle(fontSize: 25,color: Colors.white),),),
              ListTile(leading : Icon(Icons.web_asset,color: Colors.white,),title: Text("5 Kilogram - 7 Kilograms",style: TextStyle(fontSize: 25,color: Colors.white),),),
              ListTile(leading : Icon(Icons.web_asset,color: Colors.white,),title: Text("7 Kilogram - 9 Kilograms",style: TextStyle(fontSize: 25,color: Colors.white),),),
              ListTile(leading : Icon(Icons.web_asset,color: Colors.white,),title: Text("More Than 9 Kilograms",style: TextStyle(fontSize: 25,color: Colors.white),),),
            ]
          ),
        ),
      ),
    );
  }
}
