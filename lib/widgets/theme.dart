import 'package:flutter/material.dart';

final primaryColor = Color(0xffd22f3c);

final ThemeData theme = ThemeData(
  brightness: Brightness.light,
  // primaryColor: Color(0xff008753),
  primaryColor: primaryColor,
  accentColor: Color(0xff008753),
  fontFamily: "Raleway",
  scrollbarTheme: ScrollbarThemeData(
    showTrackOnHover: true,
    isAlwaysShown: true,
    thumbColor: MaterialStateProperty.all(primaryColor),
    trackColor: MaterialStateProperty.all(Colors.white)
  )
);