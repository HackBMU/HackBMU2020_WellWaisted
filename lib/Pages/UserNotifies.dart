import "package:flutter/material.dart";
import 'package:wellwasted2/Models/Notifications.dart';
class UserNotifies extends StatefulWidget {
  @override
  _UserNotifiesState createState() => _UserNotifiesState();
}

class _UserNotifiesState extends State<UserNotifies> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          NotificationView(notifications: "Your request has been accepted, your waste will be collected soon.",),
          NotificationView(notifications: "Would you like to rate your last service.",),
          NotificationView(notifications: "Did you forget to collect your rewards",),

        ],
      ),
    );
  }
}
