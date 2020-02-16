import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wellwasted2/Models/DashboardHeader.dart';
import 'package:wellwasted2/Models/ShopProducts.dart';
import 'package:wellwasted2/Pages/NearestRaddiwala.dart';


class UserDashBoard extends StatefulWidget {
  @override
  _UserDashBoardState createState() => _UserDashBoardState();
}

class _UserDashBoardState extends State<UserDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              DashboardHeader(iconData: Icons.account_balance_wallet,name: "Ankita Sharma",display: 1,),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(10),
                child:InkWell(child: Text("Call RaddiWala",style: TextStyle(color: Colors.white,fontSize: 30),),
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => NearestRaddiWala()));
                  });

                },),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(50))
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height/2,
                  child: ListView(
                    children: <Widget>[
                      ListTile(leading : Icon(Icons.web_asset,color: Colors.green,),title: Text("3 Kilogram - 5 Kilograms",style: TextStyle(fontSize: 20,color: Colors.black),),),
                      ShopProducts(imageData: Image(image:AssetImage("images/tote_bags.jpg")),textData: "Tote bags",),
                      ListTile(leading : Icon(Icons.web_asset,color: Colors.green,),title: Text("5 Kilogram - 7 Kilograms",style: TextStyle(fontSize: 20,color: Colors.black),),),
                      ShopProducts(imageData: Image(image:AssetImage("images/flowers.jpg")),textData: "Flowers",),
                      ListTile(leading : Icon(Icons.web_asset,color: Colors.green,),title: Text("7 Kilogram - 9 Kilograms",style: TextStyle(fontSize: 20,color: Colors.black),),),
                      ShopProducts(imageData: Image(image:AssetImage("images/pen.jpg")),textData: "Diary",),
                      ListTile(leading : Icon(Icons.web_asset,color: Colors.green,),title: Text("More Than 9 Kilograms",style: TextStyle(fontSize: 20,color: Colors.black),),),
                      ShopProducts(imageData: Image(image:AssetImage("images/plants.jpg")),textData: "Plants",),
                    ],
                  ),
                ),
              ),
              ],
          ),
        ),
      ),
    );
  }
}
