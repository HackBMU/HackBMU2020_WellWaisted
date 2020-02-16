import "package:flutter/material.dart";

class NearestRaddiWala extends StatefulWidget {
  @override
  _NearestRaddiWalaState createState() => _NearestRaddiWalaState();
}

class _NearestRaddiWalaState extends State<NearestRaddiWala> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: ListView(
          children: <Widget>[
            ListTile(leading:Icon(Icons.person,size: 35,color: Colors.white,),title: Text("Name1,Location1",style: TextStyle(fontSize: 22,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 35,color: Colors.white,),),
            ListTile(leading:Icon(Icons.person,size: 35,color: Colors.white,),title: Text("Name2,Location1",style: TextStyle(fontSize: 22,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 35,color: Colors.white,),),
            ListTile(leading:Icon(Icons.person,size: 35,color: Colors.white,),title: Text("Name3,Location2",style: TextStyle(fontSize: 22,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 35,color: Colors.white,),),
            ListTile(leading:Icon(Icons.person,size: 35,color: Colors.white,),title: Text("Name4,Location3",style: TextStyle(fontSize: 22,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 35,color: Colors.white,),),
            ListTile(leading:Icon(Icons.person,size: 35,color: Colors.white,),title: Text("Name5,Location3",style: TextStyle(fontSize: 22,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 35,color: Colors.white,),),
            ListTile(leading:Icon(Icons.person,size: 35,color: Colors.white,),title: Text("Name6,Location4",style: TextStyle(fontSize: 22,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 35,color: Colors.white,),),
            ListTile(leading:Icon(Icons.person,size: 35,color: Colors.white,),title: Text("Name7,Location5",style: TextStyle(fontSize: 22,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 35,color: Colors.white,),),
            ],
      )),
    );
  }
}
