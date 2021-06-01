import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroDashboard extends StatelessWidget {
  final String bigText;
  final String smallText;
  final String image;

  const IntroDashboard({
    Key key,
    this.bigText,
    this.smallText,
    this.image,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25.0),
      height: 120.0,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20.0),
      ),
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bigText,
                  style: GoogleFonts.raleway(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  smallText,
                  style: GoogleFonts.quicksand(
                      fontSize: 15.0, color: Colors.black),
                ),
              ],
            ),
          ),
          Image.asset(
            image,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
