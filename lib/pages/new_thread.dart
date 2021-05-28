import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
import 'package:social_citizen_web/widgets/custom_textform_field.dart';
import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/links.dart';
import 'package:social_citizen_web/widgets/profile_pics.dart';
import 'package:social_citizen_web/widgets/square_avatar.dart';

class NewThread extends StatefulWidget {
  NewThread({Key key}) : super(key: key);

  _NewThreadState createState() => _NewThreadState();
}

class _NewThreadState extends State<NewThread> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
    appBar: AppBar(
      title: Image.asset("assets/images/logo_no_bg.png", width: size.width * 0.09, height: size.height * 0.09),
        actions:[ NavLinks()],
      backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Theme.of(context).accentColor,
        ),
    ),
    backgroundColor: Colors.white,
    drawer: Drawer(
      child: MainDrawer(),
    ),
    body:SingleChildScrollView(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.04,
            ),
            SquareAvatar(),
            Text('Click the add button to add an image for the story ', style: TextStyle(color: Theme.of(context).accentColor,
            fontWeight: FontWeight.w100, fontSize: 20
            )),
            SizedBox(
              height: size.height * 0.03,
            ),
            CustomTextField(
              hintText: 'Head Line',                        
            ),
            CustomTextField(
              hintText: 'Write story here',
              // expands: true,
              maxLines: 15, 
              keyboardType: TextInputType.multiline,                     
            ),
            CustomElevatedButton(
              width: size.width * 0.5,
              text: 'Sumbit',
              onPressed: (){},
              backgroundcolor:Theme.of(context).accentColor,
            ),
          ],
        ),
      ),
    ),
    );
  }
}