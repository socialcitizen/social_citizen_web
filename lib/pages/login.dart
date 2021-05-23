import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/already_have_an_account.dart';
import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
import 'package:social_citizen_web/widgets/custom_textform_field.dart';
import 'package:social_citizen_web/widgets/or_divider.dart';
import 'package:social_citizen_web/widgets/social_icons.dart';
// import 'package:social_citizen_web/widgets/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);
  

  @override
  Widget build (BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    double width = size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[              
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Image.asset(
                  'assets/images/edo_state_logo.png',
                  width: size.width * 0.5
                ),
              ),
              CustomTextField(
                hintText: 'Email',
                width: width
              ),
              CustomTextField(
                hintText: 'Password',
                width: width
              ),
              
              Container(
                width: size.width,
                child: CustomElevatedButton(
                  onPressed: (){
                    // Navigator.pushNamed(context, '/cug');
                  },
                  text: 'LOGIN',
                  elevation: 1.0,
                  backgroundcolor: Theme.of(context).accentColor,                  
                ),
              ),
              
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.pushNamed(context, '/signup');
                },
              ),
              CustomElevatedButton(
                onPressed: () => Navigator.pushNamed(context, "/account"),
                text: "account",
                width: 50,
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