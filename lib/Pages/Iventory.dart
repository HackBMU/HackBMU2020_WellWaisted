import'package:flutter/material.dart';
import 'package:wellwasted2/Models/ShopProducts.dart';

class Inventory extends StatefulWidget {
  @override
  _InventoryState createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: <Widget>[
          ListTile(leading : Icon(Icons.web_asset,color: Colors.green,),title: Text("3 Kilogram - 5 Kilograms",style: TextStyle(fontSize: 20,color: Colors.black),),),
          ShopProducts(imageData: Image(image:AssetImage("images/tote_bags.jpg")),textData: "Tote Bags",),
          ListTile(leading : Icon(Icons.web_asset,color: Colors.green,),title: Text("5 Kilogram - 7 Kilograms",style: TextStyle(fontSize: 20,color: Colors.black),),),
          ShopProducts(imageData: Image(image:AssetImage("images/flowers.jpg")),textData: "Flowers",),
          ListTile(leading : Icon(Icons.web_asset,color: Colors.green,),title: Text("7 Kilogram - 9 Kilograms",style: TextStyle(fontSize: 20,color: Colors.black),),),
          ShopProducts(imageData: Image(image:AssetImage("images/pen.jpg")),textData: "Diary",),
          ListTile(leading : Icon(Icons.web_asset,color: Colors.green,),title: Text("More Than 9 Kilograms",style: TextStyle(fontSize: 20,color: Colors.black),),),
          ShopProducts(imageData: Image(image:AssetImage("images/plants.jpg")),textData: "Plants",),
        ],
      ),
    );
  }
}
