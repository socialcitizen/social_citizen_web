import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/app_bar.dart';
import 'package:social_citizen_web/widgets/dashboard_profile.dart';
import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/links.dart';
import 'package:social_citizen_web/widgets/right_side_profile.dart';
import 'package:social_citizen_web/widgets/side_nav_profile.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar.build(context),
      backgroundColor: Colors.white,
       drawer: Drawer(
         child: MainDrawer(),
       ),
      body: Row(
        children: [
          SideBar(),
          Dashboard(),
          ProfileIndicator(),
        ],
      )
      
    );
  }
}