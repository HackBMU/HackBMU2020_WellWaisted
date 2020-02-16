import "package:flutter/material.dart";
import 'package:wellwasted2/Models/Notifications.dart';
class NotificationTab extends StatefulWidget {
  @override
  _NotificationTabState createState() => _NotificationTabState();
}

class _NotificationTabState extends State<NotificationTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          NotificationView(notifications: "Address1,Name1,Time1",),
          NotificationView(notifications: "Address2,Name2,Time2",),
          NotificationView(notifications: "Address3,Name3,Time3",),
          NotificationView(notifications: "Address4,Name4,Time4",),
          NotificationView(notifications: "Address5,Name5,Time5",),
          NotificationView(notifications: "Address6,Name6,Time6",),
          NotificationView(notifications: "Address7,Name7,Time7",),
          NotificationView(notifications: "Address8,Name8,Time8",),
          NotificationView(notifications: "Address9,Name9,Time9",),
          NotificationView(notifications: "Address10,Name10,Time10",),
        ],
      ),
    );
  }
}
