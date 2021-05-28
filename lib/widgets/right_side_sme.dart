// import 'package:clmac_dashboard_webapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_citizen_web/widgets/expansion_tile.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.5 - 109.0,
      padding: EdgeInsets.only(left: 20.0),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          
          // SizedBox(
          //   height: 20.0,
          // ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height - 200,
              width: MediaQuery.of(context).size.width * 0.4,
              padding: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                ),
              ),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Business(),
                ],
              ),
            ),
            
          ),
        ],
      ),
    );
  }
}

