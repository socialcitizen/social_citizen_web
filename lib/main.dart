import 'package:flutter/material.dart';
import 'package:social_citizen_web/pages/CUG_group.dart';
import 'package:social_citizen_web/pages/GUG_group-details.dart';
import 'package:social_citizen_web/pages/account.dart';
import 'package:social_citizen_web/pages/admin.dart';
import 'package:social_citizen_web/pages/beizer.dart';
import 'package:social_citizen_web/pages/e_government_portal.dart';
import 'package:social_citizen_web/pages/example.dart';
import 'package:social_citizen_web/pages/home.dart';
import 'package:social_citizen_web/pages/home_old.dart';
import 'package:social_citizen_web/pages/home_sketch.dart';
import 'package:social_citizen_web/pages/intro.dart';
import 'package:social_citizen_web/pages/intro_page_old.dart';
import 'package:social_citizen_web/pages/intro_web.dart';
import 'package:social_citizen_web/pages/job_search.dart';
import 'package:social_citizen_web/pages/login.dart';
import 'package:social_citizen_web/pages/login_new.dart';
import 'package:social_citizen_web/pages/make_transaction.dart';
import 'package:social_citizen_web/pages/new_thread.dart';
import 'package:social_citizen_web/pages/notifications.dart';
import 'package:social_citizen_web/pages/onboarding.dart';
import 'package:social_citizen_web/pages/profile.dart';
import 'package:social_citizen_web/pages/signup.dart';
import 'package:social_citizen_web/pages/signup_sketch.dart';
import 'package:social_citizen_web/pages/sme.dart';
import 'package:social_citizen_web/widgets/admin_drawer.dart';
import 'package:social_citizen_web/widgets/expansion_tile.dart';
import 'package:social_citizen_web/widgets/feeds_details.dart';
import 'package:social_citizen_web/widgets/side_nav.dart';
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
        '/': (context) => IntroPage(),
        // '/': (context) =>  NewLogin(),
        // '/': (context) => BezierContainer(),
        // '/login' : (context) => LoginPage(),        
        '/login' : (context) => NewLogin(),        
        // '/signup': (context) => SignUpPage(),
        '/signup': (context) => SignUpSketchPage(),
        '/jobsearch': (context) => JobSearchPage(),
        '/cug': (context) => CUGGroupPage(),
        '/postdetails' : (context) => PostDetails(),
        '/profile': (context) => Profile(),
        '/notifications': (context) => Notifications(),
        '/account': (context) => BankAccount(),
        '/sme': (context) => MySME(),
        '/transaction' : (context) => MakeTransaction(),
        '/newthread' : (context) => NewThread(),
        '/onboarding': (context) => OnBoardingPage(),
        '/admin' : (context) => Admin(),
        '/eportal': (context) => EGovernmentPortal(),
        '/home': (context) => MyHomeSketchScreen(),
        // '/home': (context) => MyHomeScreen(),
        '/feeddetails': (context) => FeedsDetails(),
      },
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

