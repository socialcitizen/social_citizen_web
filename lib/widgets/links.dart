import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:social_citizen_web/widgets/text.dart';

class NavLinks extends StatelessWidget {
  const NavLinks({Key key}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: InkWell(
              radius: size.width * 0.03,
              child: MySmallText(
                color: Theme.of(context).accentColor,
                text: "HOME"
              ),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:  MouseRegion(
            cursor: SystemMouseCursors.click,
              child: GestureDetector(
              child: MySmallText(
                color: Theme.of(context).accentColor,
                text: "LOG OUT"
              ),
            ),
          ),
        ),
        Container(
          width: size.width * 0.03,
          child:
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/8.jpg'),
                  backgroundColor: Colors.red,
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
              ),
            ),              
        ),
        
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          )
        ),
      ],
    );
  }
}