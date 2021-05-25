import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/already_have_an_account.dart';
import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
import 'package:social_citizen_web/widgets/custom_textform_field.dart';
import 'package:social_citizen_web/widgets/or_divider.dart';
import 'package:social_citizen_web/widgets/social_icons.dart';
// import 'package:social_citizen_web/widgets/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
              child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                  height: size.height * 0.06,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Image.asset('assets/images/edo-coat.jpg', width: size.width * 0.15),
              ),
              CustomTextField(
                hintText: 'First Name',
              ),
              CustomTextField(
                hintText: 'Last Name',
              ),
              CustomTextField(
                hintText: 'Mobile Number',
              ),
              CustomTextField(
                hintText: 'Email',
              ),
              CustomTextField(
                hintText: 'Password',
              ),
              CustomTextField(
                hintText: 'Confirm Password',
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left:270,  right:270),
              //   child:
                 Container(
                   width: size.width * 0.5,
                   child: CustomElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/home');
                    },
                    text: 'SIGN UP',
                    elevation: 1.0,
                    backgroundcolor: Theme.of(context).accentColor,                  
                ),
                 ),
              // ),
              SizedBox(
              height: size.height * 0.04,
              ),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.pushNamed(context, '/login');
                },
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