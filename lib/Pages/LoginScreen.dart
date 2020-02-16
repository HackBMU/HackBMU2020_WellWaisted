import 'package:flutter/material.dart';
import 'package:wellwasted2/Pages/BusinessRegistration.dart';
import 'package:wellwasted2/Pages/EmployeeScrollPages.dart';
import 'package:wellwasted2/Pages/LocalRecyclerScroll.dart';
import 'package:wellwasted2/Pages/UserScrollPages.dart';

class LoginScreens extends StatefulWidget {
  @override
  _LoginScreensState createState() => _LoginScreensState();
}

class _LoginScreensState extends State<LoginScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:<Widget>[
          Image.asset("images/m.jpg",scale: 2,),
          Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              InkWell(
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.green),
                  child:Text("I am Employee",style:TextStyle(fontSize: 35,color: Colors.white)),
                ),
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder:(context){ return EmployeeScrollPages();}));
                  });
                },
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10),),color: Colors.green
                  ),
                  child:Text("I am RaddiWala",style:
                  TextStyle(fontSize: 40,color: Colors.white)),
                ),
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder:(context){ return LocalRecyclerScrollPages();}));
                  });
                },
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                    child:Text("I am User",style:TextStyle(fontSize: 35,color: Colors.white)),
                ),
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder:(context){ return UserScrollPages();}));
                  });
                },
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
