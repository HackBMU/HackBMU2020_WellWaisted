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
          NotificationView(),
          NotificationView(),
          NotificationView(),
          NotificationView(),
          NotificationView(),
        ],
      ),
    );
  }
}
