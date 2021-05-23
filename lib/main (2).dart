import 'package:flutter/material.dart';
import 'package:social_citizen_web/pages/CUG_group.dart';
import 'package:social_citizen_web/pages/GUG_group-details.dart';
import 'package:social_citizen_web/pages/job_search.dart';
import 'package:social_citizen_web/pages/login.dart';
import 'package:social_citizen_web/pages/signup.dart';
import 'package:social_citizen_web/widgets/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget),
          maxWidth: 1200,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          // background: Container(color: Color(0xFFF5F5F5)),
        ),
      debugShowCheckedModeBanner: false,
      title: 'Social Citizen',
      theme: theme,
      initialRoute: '/',
      routes: {
        '/' : (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/jobsearch': (context) => JobSearchPage(),
        '/cug': (context) => CUGGroupPage(),
        '/postdetails' : (context) => PostDetails(),
      },
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

