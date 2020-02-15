import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  IconData iconData;
  DashboardHeader({this.iconData});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(50.0)
            ,bottomLeft: Radius.circular(50)
      )),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text("Name: Ram Singh",style: TextStyle(color: Colors.white),),
                Text("Mobile No.: 280w42380##@",style: TextStyle(color:Colors.white),)
              ],
            ),
          ),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.black,
            child: Icon(Icons.person,size: 100,color: Colors.white,),
          ),
          iconData == null ? Container():Icon(iconData,color: Colors.white,size: 75,)
        ],
      )
    );
  }
}
