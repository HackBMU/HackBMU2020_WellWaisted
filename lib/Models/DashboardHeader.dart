import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  IconData iconData;
  DashboardHeader({this.iconData,this.name,this.padding,this.address,this.display});
  String name;
  double padding;
  String address;
  int display;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(padding == null ? 30 : padding),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(50.0)
            ,bottomLeft: Radius.circular(50)
      )),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: display == null ? Container(): Column(
              children: <Widget>[
                Text(name== null ?"Ram Singh":name,style: TextStyle(color: Colors.white),),
                Text("Mobile No.: 280w42380",style: TextStyle(color:Colors.white),),
                Text(address== null?"":address,style: TextStyle(color:Colors.white),)
              ],
            ),
          ),
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.transparent,
            child: Icon(Icons.person,size: 100,color: Colors.white,),
          ),
          iconData == null ? Container():Icon(iconData,color: Colors.white,size: 50,)
        ],
      )
    );
  }
}
