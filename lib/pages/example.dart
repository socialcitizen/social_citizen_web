import 'package:flutter/material.dart';
import 'dart:math';

import 'package:social_citizen_web/widgets/text.dart';

class OvalShape extends StatelessWidget {
  const OvalShape({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: ClipPath(
                clipper: MyOvalShape(),
                child: Container(
                  height: size.height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/11.jpeg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                  child: Container(
                    height: size.height,
                    // color: Colors.yellow,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Row(

                          children: [
                            Image.asset(
                              "assets/images/logo_no_bg.png",
                              width: size.width * 0.06,
                              height: size.width * 0.06
                            ),
                            Column(children: [
                              MyTitleText(
                                text: 'Already have an account?',
                              ),
                              MySmallText(
                                text: 'Sign in',
                              )
                            ],

                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyOvalShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();    

    path.lineTo(width * 0.6, height * 0.0);
    path.lineTo(width * 2.0, height);

    var firstControlPoint = Offset(width * 0.95, height * 0.25);
    var firstEndPoint = Offset(width * 0.6, height * 0.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
      firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(width * 0.95, height * 0.45);
    var secondEndPoint = Offset(width * 0.7, height);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
      secondEndPoint.dx, secondEndPoint.dy);
      
    path.lineTo(width * 0.0, height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
