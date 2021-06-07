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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.home),
                  MySmallerText(
                    color: Color(0xff008753),
                    text: "HOME"
                  ),
                ]
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
            child: InkWell(
              radius: size.width * 0.03,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.logout),
                  MySmallerText(
                    color: Color(0xff008753),
                    text: "LOG OUT",
                    // bold: true,
                  )
                ]
              ),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:  MouseRegion(
            cursor: SystemMouseCursors.click,
            child: InkWell(
              radius: size.width * 0.03,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.notifications),
                  MySmallerText(
                    color: Color(0xff008753),
                    text: "NOTIFICATIONS"
                  )
                ]
              ),
              onTap: () {
                Navigator.pushNamed(context, '/notifications');
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: size.width * 0.03,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: InkWell(
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
        ),
        
        SizedBox(
          width: size.width * 0.05
        ),
      ],
    );
  }
}
