import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/links.dart';
import 'package:social_citizen_web/widgets/text.dart';

class MyAppBar {
  
  static PreferredSizeWidget build (BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AppBar(
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AvatarGlow(
              repeatPauseDuration: Duration(seconds: 5),
              endRadius: size.width * 0.03,
              glowColor: Theme.of(context).primaryColor,
              child: Image.asset(
                "assets/images/logo_no_bg.png",
                width: size.width * 0.025,
                height: size.width * 0.025
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: MySmallText(
                text: "EDO STATE SOCIAL CITIZEN PLATFORM",
                bold: true,
                color: Color(0xff008753),
              ),
            )
          ],
        ),
      ),
      actions:[NavLinks()],
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Color(0xff008753),
      )      
    );
  }
}