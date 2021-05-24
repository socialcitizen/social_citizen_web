import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:social_citizen_web/widgets/text.dart';

class NavLinks extends StatelessWidget {
  const NavLinks({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 3.0, 8.0, 3.0),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                      child: MyTitleText(
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
              padding: const EdgeInsets.all(3.0),
              child:  MouseRegion(
                cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                  child: MyTitleText(
                    color: Theme.of(context).accentColor,
                    text: "LOG OUT"
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(8.0, 3.0, 8.0, 3.0),
            //   child: MouseRegion(
            //     cursor: SystemMouseCursors.click,
            //     child: GestureDetector(
            //           child: CircleAvatar(
            //             // backgroundColor: Colors.white,
            //             backgroundImage: AssetImage('assets/images/user.png'),
            //           ),
                      
            //         onTap: () {
            //            Navigator.pushNamed(context, '/profile');
            //         },
            //     ),
            //   ),
            // ),
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