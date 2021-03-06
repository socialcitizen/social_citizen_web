import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/app_bar.dart';
import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/links.dart';

class Notifications extends StatefulWidget {
  Notifications({Key key}) : super(key: key);

  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar.build(context),
      backgroundColor: Colors.white,
       drawer: Drawer(
         child: MainDrawer(),
       ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('No notifications yet', style: TextStyle(fontSize: 40.0))
        ],
      ),
      )
    );
  }
}