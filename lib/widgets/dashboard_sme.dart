
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
import 'package:social_citizen_web/widgets/custom_textform_field.dart';
import 'package:social_citizen_web/widgets/square_avatar.dart';
import 'package:social_citizen_web/widgets/square_text_field.dart';


class Dashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.5,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
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
                          'Hello, CJ!',
                          style: GoogleFonts.raleway(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          'Manage your businesses here',
                          style: GoogleFonts.quicksand(
                              fontSize: 15.0, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/images/pencil.png',
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            SizedBox(
            height: 25.0,
            ),
            Text('Business Registration Details',
            style: GoogleFonts.raleway(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              color: Colors.black),
              textAlign: TextAlign.center
            ),
            SizedBox(
            height: 15.0,
            ),
            SquareAvatar(),
            SizedBox(
            height: 10.0,
            ),
            Text('Add Business Logo',
            style: GoogleFonts.quicksand(
              fontSize: 20.0,
              // fontWeight: FontWeight.bold,
              color: Colors.black),
              textAlign: TextAlign.center
            ),
            SizedBox(
            height: 15.0,
            ),
            CustomTextField(
              hintText: 'Business Name',
            ),
            CustomTextField(
              hintText: 'CAC Number',
            ),
            CustomTextField(
              hintText: 'Tax Id',
            ),
            CustomElevatedButton(
              width: 150,
              onPressed: (){
                // Navigator.pushNamed(context, '/cug');
              },
              text: 'Register',
              elevation: 1.0,
              backgroundcolor: Theme.of(context).accentColor,                  
            ),
            
          ],
        ),
      ),
    );
  }
}

