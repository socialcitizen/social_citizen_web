import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
 
  final String text;
  final Function onPressed;
  final Color color;
  final double elevation;
  final double borderWidth;
  final Color borderColor;
  final Color textcolor;
  final Color backgroundcolor;
  final double width;

  CustomElevatedButton({
     @required this.onPressed, 
     @required this.text,
     this.color,
     this.elevation,
     this.borderWidth,
     this.borderColor,
     this.textcolor,
     this.backgroundcolor,
     this.width
  });

 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.08,
        width: width ,
        child: ElevatedButton(
          child: Text(
            text,          
          ),
          onPressed: onPressed,
          style:ElevatedButton.styleFrom(
            primary: backgroundcolor,
             onPrimary: textcolor,
            // onPrimary: backgroundcolor,
            elevation: elevation,
            textStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15,
            ),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            // side: BorderSide(
            //   width: borderWidth,
            //   color: borderColor ?? color,
            // ),
            // borderRadius: BorderRadius.circular(25.0),
          ), 
          ),
        ),
      ),
    );
  }
  
}