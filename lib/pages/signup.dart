import 'package:animate_do/animate_do.dart';
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
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/edo_state_logo.png",
                  width: size.width * 0.5
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: MyTitleText(
                  text: "EDO STATE SOCIAL CITIZEN PLATFORM"
                ),
              ),

              // Signup/Login Form
              Form(
                child: Column(
                  children: [
                    isSigningUp ? SlideInRight(
                      child: CustomTextField(
                        hintText: 'First Name',
                        width: width
                      ),
                    ): Container(),
                    isSigningUp ? SlideInRight(
                      child: CustomTextField(
                        hintText: 'Last Name',
                        width: width
                      ),
                    ): Container(),
                    isSigningUp ? SlideInRight(
                      child: CustomTextField(
                        hintText: 'Mobile Number',
                        width: width
                      )
                    ): Container(),
                    CustomTextField(
                      hintText: 'Email',
                      width: width
                    ),
                    isSigningUp ? SlideInRight(
                      child: CustomTextField(
                        hintText: 'Password',
                        width: width
                      ),
                    ): Container(),
                    CustomTextField(
                      hintText: 'Confirm Password',
                      width: width
                    ),
                  ]
                )
              ),
              
              // Submit form (signup/login)
              Container(
                width: width,
                child: CustomElevatedButton(
                  onPressed: () {
                    // Todo:
                    Navigator.pushNamed(context, '/onboarding');
                  },
                  text: isSigningUp ? "SIGN UP": "LOGIN",
                  elevation: 1.0,
                  backgroundcolor: Theme.of(context).accentColor,                  
                )
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: AlreadyHaveAnAccountCheck(
                  login: false,
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