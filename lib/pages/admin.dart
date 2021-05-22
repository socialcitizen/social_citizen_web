import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/admin_drawer.dart';
import 'package:social_citizen_web/widgets/links.dart';

class Admin extends StatelessWidget {
  const Admin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: NavLinks(),
         backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Theme.of(context).accentColor,
        ),        
       ),
       backgroundColor: Colors.white,
       drawer: Drawer(
         child: AdminDrawer(),
       ),
    );
  }
}