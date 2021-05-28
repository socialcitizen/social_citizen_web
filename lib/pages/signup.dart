// import 'package:flutter/material.dart';
// import 'package:social_citizen_web/widgets/already_have_an_account.dart';
// import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
// import 'package:social_citizen_web/widgets/custom_textform_field.dart';
// import 'package:social_citizen_web/widgets/or_divider.dart';
// import 'package:social_citizen_web/widgets/social_icons.dart';
// // import 'package:social_citizen_web/widgets/theme.dart';

// class SignUpPage extends StatelessWidget {
//   const SignUpPage({Key key}) : super(key: key);
  

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//               child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               SizedBox(
//                   height: size.height * 0.06,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 15.0),
//                 child: Image.asset('assets/images/logo_no_bg.png', width: size.width * 0.15),
//               ),
//               CustomTextField(
//                 hintText: 'First Name',
//               ),
//               CustomTextField(
//                 hintText: 'Last Name',
//               ),
//               CustomTextField(
//                 hintText: 'Mobile Number',
//               ),
//               CustomTextField(
//                 hintText: 'Email',
//               ),
//               CustomTextField(
//                 hintText: 'Password',
//               ),
//               CustomTextField(
//                 hintText: 'Confirm Password',
//               ),
//               // Padding(
//               //   padding: const EdgeInsets.only(left:270,  right:270),
//               //   child:
//                  Container(
//                    width: size.width * 0.5,
//                    child: CustomElevatedButton(
//                     onPressed: (){
//                       Navigator.pushNamed(context, '/home');
//                     },
//                     text: 'SIGN UP',
//                     elevation: 1.0,
//                     backgroundcolor: Theme.of(context).accentColor,                  
//                 ),
//                  ),
//               // ),
//               SizedBox(
//               height: size.height * 0.04,
//               ),
//               AlreadyHaveAnAccountCheck(
//                 login: false,
//                 press: () {
//                   Navigator.pushNamed(context, '/login');
//                 },
//               ),
//               OrDivider(),
//               Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 SocialIcons(
//                   iconSrc: 'assets/logo/facebook.svg',
//                   press: () {}
//                 ),
//                 SocialIcons(
//                   iconSrc: 'assets/logo/google.svg',
//                   press: () {}
//                 ),
//                 SocialIcons(
//                   iconSrc: 'assets/logo/twitter.svg',
//                   press: () {}
//                 ),
//               ],
//             ),
//             ],
//           ),
//         ),
//       ),
//          );
//   }
// }


import 'package:animate_do/animate_do.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';

import 'package:social_citizen_web/widgets/already_have_an_account.dart';
import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
import 'package:social_citizen_web/widgets/custom_textform_field.dart';
import 'package:social_citizen_web/widgets/or_divider.dart';
import 'package:social_citizen_web/widgets/social_icons.dart';
import 'package:social_citizen_web/widgets/text.dart';


// import 'package:social_citizen_web/widgets/theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  
  bool isSigningUp;

  @override
  void initState() { 
    super.initState();
    
    isSigningUp = false;
  }  

  @override
  Widget build (BuildContext context) {

    Size size = MediaQuery.of(context).size;
    double width = size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              SizedBox(
                width: size.width,
                height: size.height * 0.25,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Shimmer.fromColors(
                      period: Duration(milliseconds: 3000),
                      baseColor: Colors.white,
                      highlightColor: Theme.of(context).accentColor,
                      child: Container(
                        width: size.width,
                        height: size.height * 0.3,
                        color: Colors.white,
                      )
                    ),
                    Image.asset(
                      "assets/images/logo_no_bg.png",
                      width: size.width * 0.5,
                      height: size.height * 0.25
                    )
                  ],
                ),
              ),
              
              SizedBox(
                height: size.height * 0.2,
                width: size.width,
                child: Arc(
                  edge: Edge.TOP,
                  arcType: ArcType.CONVEY,
                  height: 30.0,
                  child: Container(
                    color: Colors.grey[200],
                    width: size.width,
                    height: size.height * 0.2,
                    child: Shimmer.fromColors(
                      period: Duration(milliseconds: 3000),
                      baseColor: Colors.black87,
                      highlightColor: Theme.of(context).accentColor,
                      child: Center(
                        child: FadeInDown(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "EDO SOCIAL CITIZEN PLATFORM",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                            )
                          )
                        )
                      ),
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Image.asset(
              //     "assets/images/edo_state_logo.png",
              //     width: size.width * 0.5
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(12.0),
              //   child: MyTitleText(
              //     text: "EDO STATE SOCIAL CITIZEN PLATFORM"
              //   ),
              // ),

              // Signup/Login Form
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                color: Colors.grey[200],
                child: Form(
                  child: Column(
                    children: [
                      isSigningUp ? SlideInRight(
                        child: CustomTextField(
                          hintText: 'First Name',
                          // width: width
                        ),
                      ): Container(),
                      isSigningUp ? SlideInRight(
                        child: CustomTextField(
                          hintText: 'Last Name',
                          // width: width
                        ),
                      ): Container(),
                      isSigningUp ? SlideInRight(
                        child: CustomTextField(
                          hintText: 'Mobile Number',
                          // width: width
                        )
                      ): Container(),
                      CustomTextField(
                        hintText: 'Email',
                        // width: width
                      ),
                      isSigningUp ? SlideInRight(
                        child: CustomTextField(
                          hintText: 'Password',
                          // width: width
                        ),
                      ): Container(),
                      CustomTextField(
                        hintText: 'Confirm Password',
                        // width: width
                      ),
                    ]
                  )
                ),
              ),
              
              // Submit form (signup/login)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                color: Colors.grey[200],
                width: size.width * 0.5,
                child: CustomElevatedButton(
                  onPressed: () {
                    // Todo:
                    Navigator.pushNamed(context, '/home');
                  },
                  text: isSigningUp ? "SIGN UP": "LOGIN",
                  elevation: 1.0,
                  backgroundcolor: Theme.of(context).accentColor,                  
                )
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: AlreadyHaveAnAccountCheck(
                  login: !isSigningUp,
                  press: () {
                    // String routeName = isSigningUp ? "/login": "/signup";

                    // await Navigator.pushNamed(context, routeName);
                    setState(() => isSigningUp = !isSigningUp);

                  },
                ),
              ),
              OrDivider(),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcons(
                  iconSrc: 'assets/logo/facebook.svg',
                  press: () {}
                ),
                SocialIcons(
                  iconSrc: 'assets/logo/google.svg',
                  press: () {}
                ),
                SocialIcons(
                  iconSrc: 'assets/logo/twitter.svg',
                  press: () {}
                ),
              ],
            ),
            ],
          ),
        ),
      ),
    );
  }
}