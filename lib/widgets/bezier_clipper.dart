import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyBezierContainer extends StatelessWidget {
  const MyBezierContainer({Key key}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    
    return Container(
      child: Transform.rotate(
        angle: -pi / 3.5, 
        child: ClipPath(
          clipper: ClipPainter(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Theme.of(context).accentColor, Colors.white]
              )
            ),
          ),
        ),
      )
    );
  }
}

class ClipPainter extends CustomClipper<Path>{
  @override
 
   Path getClip(Size size) {
    
    double height = size.height;
    double width = size.width;
    Path path = new Path();

    path.lineTo(0, size.height );
    path.lineTo(size.width , height);
    path.lineTo(size.width , 0);
  
    /// [Top Left corner]
    Offset secondControlPoint =  Offset(0  ,0);
    Offset secondEndPoint = Offset(width * .2, height *.3);
    
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);


     /// [Left Middle]
    Offset fifthControlPoint =  Offset(width * .3  ,height * .5);
    Offset fiftEndPoint = Offset(  width * .23, height *.6);
    
    path.quadraticBezierTo(fifthControlPoint.dx, fifthControlPoint.dy, fiftEndPoint.dx, fiftEndPoint.dy);


    /// [Bottom Left corner]
    Offset thirdControlPoint =  Offset(0  ,height);
    Offset thirdEndPoint = Offset(width , height  );
    
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy, thirdEndPoint.dx, thirdEndPoint.dy);

    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip (CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

  
}