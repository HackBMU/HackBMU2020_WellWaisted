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
              DashboardHeader(),
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
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(50))
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height/2,
                  child: ListView(
                    children: <Widget>[
                      ListTile(leading : Icon(Icons.web_asset,color: Colors.black,),title: Text("3 Kilogram - 5 Kilograms",style: TextStyle(fontSize: 25,color: Colors.black),),),
                      ShopProducts(imageData: Image(image:AssetImage("images/santa.jpg")),),
                      ListTile(leading : Icon(Icons.web_asset,color: Colors.black,),title: Text("5 Kilogram - 7 Kilograms",style: TextStyle(fontSize: 25,color: Colors.black),),),
                      ShopProducts(imageData: Image(image:AssetImage("images/flowers.jpg")),),
                      ListTile(leading : Icon(Icons.web_asset,color: Colors.black,),title: Text("7 Kilogram - 9 Kilograms",style: TextStyle(fontSize: 25,color: Colors.black),),),
                      ShopProducts(imageData: Image(image:AssetImage("images/pen.jpg")),),
                      ListTile(leading : Icon(Icons.web_asset,color: Colors.black,),title: Text("More Than 9 Kilograms",style: TextStyle(fontSize: 25,color: Colors.black),),),
                      ShopProducts(imageData: Image(image:AssetImage("images/plants.jpg"))),
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
