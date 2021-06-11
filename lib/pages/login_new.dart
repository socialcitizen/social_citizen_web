import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
import 'package:social_citizen_web/widgets/custom_textform_field.dart';
import 'package:social_citizen_web/widgets/or_divider.dart';
import 'package:social_citizen_web/widgets/text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewLogin extends StatelessWidget {
  const NewLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.grey.withOpacity(0.4), BlendMode.dstATop),
                image: AssetImage("assets/images/11.jpeg"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/logo_no_bg.png",
                          width: size.width * 0.06, height: size.width * 0.06),
                      MyTitleText(
                        text: 'Welcome Back!',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MySmallText(
                            bold: true,
                            color: Colors.indigo[900],
                            text: 'Conditions',
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          MySmallText(
                            bold: true,
                            color: Colors.indigo[900],
                            text: 'Privacy',
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          MySmallText(
                            bold: true,
                            color: Colors.blue[900],
                            text: 'Help',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                              child: Column(
                                children: [
                                  MyTitleText(
                                    text: 'Connect With Fellow Edo People All',
                                  ),
                                  MyTitleText(
                                    text: 'Around The World',
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                              child: Container(
                                  height: size.height * 0.3,
                                  width: size.width * 0.2,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300].withOpacity(0.8),
                                      borderRadius:
                                          BorderRadius.circular(25.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        28.0, 15, 28.0, 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        MyTitleText(
                                          text: 'New Here?',
                                        ),
                                        CustomElevatedButton(
                                          onPressed: () {
                                            Navigator.pushNamed(context, '/signup');
                                          },
                                          text: 'Create An Account',
                                          textcolor: Colors.white,
                                          backgroundcolor:
                                              Theme.of(context).primaryColor,
                                          width: 180,
                                        ),
                                        SizedBox(height: size.height * 0.02),
                                        MySmallText(
                                            text:
                                                'Conect with people. Apply for job openings and so much more'),
                                      ],
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 25, 0),
                        child: Container(
                          height: size.height * 0.8,
                          decoration: BoxDecoration(
                              color: Colors.grey[300].withOpacity(0.8),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child:
                                    MyTitleText(text: 'Log in to your account'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(30, 8, 30, 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyTitleText(
                                      alignment: TextAlign.left,
                                      text: 'Email Address',
                                    ),
                                    CustomTextField(
                                      filled: true,
                                      filledColor: Colors.white,
                                      hintText: 'enter your email address',
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(30, 8, 30, 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyTitleText(
                                      text: 'Password',
                                    ),
                                    CustomTextField(
                                      filled: true,
                                      filledColor: Colors.white,
                                      hintText: 'enter your password',
                                      suffixIcon: Icon(Icons.visibility_off),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 8, 10, 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      height: size.height * 0.06,
                                      width: size.width * 0.15,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushNamed(context, '/home');
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text('Log in'),
                                            Icon(Icons.chevron_right),
                                          ],
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary:
                                              Theme.of(context).primaryColor,
                                          onPrimary: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        MySmallText(
                                            text:
                                                'by login in you agree to our'),
                                        MySmallText(text: 'conditions of use'),
                                        MySmallText(text: 'and privacy policy')
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              OrDivider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: size.height * 0.07,
                                    width: size.width * 0.18,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        // Icon(Icons.chevron_right),
                                        SvgPicture.asset(
                                          'assets/logo/google.svg',
                                          height: size.height * 0.03,
                                          width: size.width * 0.03,
                                        ),
                                        MySmallText(
                                          text: 'Login with Google',
                                          color: Colors.black,
                                          bold: true,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: size.height * 0.07,
                                    width: size.width * 0.18,
                                    decoration: BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        // Icon(Icons.chevron_right),
                                        SvgPicture.asset(
                                          'assets/logo/facebook.svg',
                                          height: size.height * 0.03,
                                          width: size.width * 0.03,
                                        ),
                                        MySmallText(
                                          text: 'Login with Facebook',
                                          color: Colors.white,
                                          bold: true,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 20, 350, 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MySmallText(
                                      text: 'I forgot my password',
                                      color: Colors.indigo,
                                      bold: true,
                                    ),
                                    SizedBox(height: size.height * 0.01),
                                    MySmallText(
                                      text: 'I can\'t login',
                                      color: Colors.indigo,
                                      bold: true,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
