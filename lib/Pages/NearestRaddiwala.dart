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
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            ListTile(leading:Icon(Icons.person,size: 35,color: Colors.white,),title: Text("Name1,Location1",style: TextStyle(fontSize: 22,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 35,color: Colors.white,),),
            ListTile(leading:Icon(Icons.person,size: 35,color: Colors.white,),title: Text("Name2,Location2",style: TextStyle(fontSize: 22,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 35,color: Colors.white,),),
            ListTile(leading:Icon(Icons.person,size: 35,color: Colors.white,),title: Text("Name3,Location3",style: TextStyle(fontSize: 22,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 35,color: Colors.white,),),
            ListTile(leading:Icon(Icons.person,size: 35,color: Colors.white,),title: Text("Name4,Location4",style: TextStyle(fontSize: 22,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 35,color: Colors.white,),),
            ListTile(leading:Icon(Icons.person,size: 35,color: Colors.white,),title: Text("Name5,Location5",style: TextStyle(fontSize: 22,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 35,color: Colors.white,),),
            ListTile(leading:Icon(Icons.person,size: 35,color: Colors.white,),title: Text("Name6,Location6",style: TextStyle(fontSize: 22,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 35,color: Colors.white,),),
            ListTile(leading:Icon(Icons.person,size: 35,color: Colors.white,),title: Text("Name7,Location7",style: TextStyle(fontSize: 22,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 35,color: Colors.white,),),
            ListTile(leading:Icon(Icons.person,size: 35,color: Colors.white,),title: Text("Name8,Location8",style: TextStyle(fontSize: 22,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 35,color: Colors.white,),),ListTile(leading:Icon(Icons.person,size: 30,color: Colors.white,),title: Text("Name1,Location1",style: TextStyle(fontSize: 25,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 30,color: Colors.white,),),
            ListTile(leading:Icon(Icons.person,size: 35,color: Colors.white,),title: Text("Name9,Location9",style: TextStyle(fontSize: 22,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 35,color: Colors.white,),),
            ListTile(leading:Icon(Icons.person,size: 35,color: Colors.white,),title: Text("Name10,Location10",style: TextStyle(fontSize: 22,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 35,color: Colors.white,),),
            ListTile(leading:Icon(Icons.person,size: 35,color: Colors.white,),title: Text("Name11,Location11",style: TextStyle(fontSize: 22,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 35,color: Colors.white,),),
            ListTile(leading:Icon(Icons.person,size: 35,color: Colors.white,),title: Text("Name12,Location12",style: TextStyle(fontSize: 22,color: Colors.white),),trailing: Icon(Icons.bookmark_border,size: 35,color: Colors.white,),),
          ],
      )),
    );
  }
}
