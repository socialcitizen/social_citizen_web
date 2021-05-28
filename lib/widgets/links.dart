import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:social_citizen_web/widgets/text.dart';
import 'package:avatar_glow/avatar_glow.dart';

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
            Container(
              width: 58,
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
            // Container(
            //   width: 40,
            //   child:
            //     MouseRegion(
            //       cursor: SystemMouseCursors.click,
            //       child: GestureDetector(
            //         child: AvatarGlow(
            //           startDelay: Duration(milliseconds: 1000),
            //           glowColor: Theme.of(context).accentColor,
            //           endRadius: 100.0,
            //           duration: Duration(milliseconds: 2000),
            //           repeat: true,
            //           showTwoGlows: true,
            //           repeatPauseDuration: Duration(milliseconds: 100),
            //           child: Material(
            //             elevation: 8.0,
            //             shape: CircleBorder(),
            //             // color: Colors.transparent,
            //             child: CircleAvatar(
            //               backgroundImage: AssetImage('assets/images/user.png'),
            //               radius: 50.0,
            //             ),
            //           ),
            //           shape: BoxShape.circle,
            //           animate: true,
            //           curve: Curves.fastOutSlowIn,
            //         ),
            //         onTap: () {
            //             Navigator.pushNamed(context, '/profile');
            //         },
            //       ),
            //     ),              
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