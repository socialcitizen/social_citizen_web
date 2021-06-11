import 'package:animate_do/animate_do.dart';
import 'package:flutter/painting.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:social_citizen_web/widgets/already_have_an_account.dart';
import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
import 'package:social_citizen_web/widgets/custom_textform_field.dart';
import 'package:social_citizen_web/widgets/or_divider.dart';
import 'package:social_citizen_web/widgets/social_icons.dart';
import 'package:social_citizen_web/widgets/text.dart';

// import 'package:social_citizen_web/widgets/theme.dart';

class SignUpSketchPage extends StatefulWidget {
  const SignUpSketchPage({Key key}) : super(key: key);

  @override
  _SignUpSketchPageState createState() => _SignUpSketchPageState();
}

class _SignUpSketchPageState extends State<SignUpSketchPage> {
  List<String> images = [
    "assets/images/9.jpeg",
    // "assets/images/13.jpeg",
    "assets/images/1.jpg",
    "assets/images/2.jpeg",
    "assets/images/4.jpeg",
    // "assets/images/9.jpeg",
    "assets/images/11.jpeg",
    "assets/images/16.jpeg",
  ];

  bool isSigningUp;

  @override
  void initState() {
    super.initState();

    isSigningUp = false;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;

    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Container(
          width: size.width,
          height: size.height,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
                  Widget>[
            // Clipped photo of dancing women
            Expanded(
              child: Container(
                width: size.width * 0.7,
                height: size.height,
                child: ClipPath(
                  clipper: MyClipper(),
                  child: new Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return new Image.asset(
                        images[index],
                        fit: BoxFit.fill,
                      );
                    },
                    autoplay: true,
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    pagination: new SwiperPagination(),
                    // control: new SwiperControl(),
                  ),
                ),
                // Image.asset(
                //   "assets/images/9.jpeg",
                //   width: size.width,
                //   height: size.height,
                //   fit: BoxFit.cover,
                //   filterQuality: FilterQuality.high
                // ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("assets/images/logo_no_bg.png",
                                  width: size.width * 0.05,
                                  height: size.width * 0.05,
                                  fit: BoxFit.contain,
                                  filterQuality: FilterQuality.high),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    MyBoldText(
                                      text: "Already have an account?",
                                    ),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(context, '/login');
                                        },
                                        child: MyTitleText(
                                            text: "Sign in.", color: Colors.blue),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ]),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomTextField(
                                    filled: true,
                                    filledColor: Colors.white,
                                    hintText: "First name",
                                    width: width / 4),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomTextField(
                                    filled: true,
                                    filledColor: Colors.white,
                                    hintText: "Last name",
                                    width: width / 4),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomTextField(
                                    filled: true,
                                    filledColor: Colors.white,
                                    hintText: "Username",
                                    width: width / 4),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomTextField(
                                    filled: true,
                                    filledColor: Colors.white,
                                    hintText: "Phone number",
                                    width: width / 4),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomTextField(
                              filled: true,
                              filledColor: Colors.white,
                              hintText: "Email address",
                              width: width / 2),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomTextField(
                              filled: true,
                              filledColor: Colors.white,
                              hintText: "Password",
                              width: width / 2),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomTextField(
                              filled: true,
                              filledColor: Colors.white,
                              hintText: "Confirm password",
                              width: width / 2),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: CustomElevatedButton(
                          width: size.width,
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          text: "Proceed",
                          backgroundcolor: Theme.of(context).primaryColor,
                        ),
                      ),
                      OrDivider(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      ),
                    ]),
              ),
            ),
          ]),
        ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height * 1.2;
    double width = size.width;
    Offset controlPoint = Offset(width * 0.95, height * 0.25);
    Offset endPoint1 = Offset(width * 0.6, 0.0);
    Offset endPoint2 = Offset(width * 0.7, height);
    Path path = new Path();

    path.lineTo(width * 0.6, 0);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint1.dx, endPoint1.dy);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint2.dx, endPoint2.dy);
    path.lineTo(0.0, height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // ignore: todo
    // TODO: implement shouldReclip
    return true;
  }
}
