import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/links.dart';

class MyAppBar {
  
  static PreferredSizeWidget build (BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AppBar(
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          "assets/images/logo_no_bg.png",
          width: size.width * 0.025,
          height: size.width * 0.025
        ),
      ),
      actions:[NavLinks()],
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Theme.of(context).accentColor,
      )      
    );
  }
}