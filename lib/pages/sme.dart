// import 'package:flutter/material.dart';
// import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
// import 'package:social_citizen_web/widgets/custom_textform_field.dart';
// import 'package:social_citizen_web/widgets/customized_tile.dart';
// import 'package:social_citizen_web/widgets/drawer.dart';
// import 'package:social_citizen_web/widgets/links.dart';

// class MySME extends StatefulWidget {
//   MySME({Key key}) : super(key: key);

//   _MySMEState createState() => _MySMEState();
// }

// class _MySMEState extends State<MySME> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//        appBar: AppBar(
//          title: NavLinks(),
//          backgroundColor: Colors.white,
//         iconTheme: IconThemeData(
//           color: Theme.of(context).accentColor,
//         ),        
//        ),
//        backgroundColor: Colors.white,
//        drawer: Drawer(
//          child: MainDrawer(),         
//        ),
//        body: Column(
//          children: [
//            SizedBox(
//                   height: size.height * 0.1,
//                  ),
//            Flexible(
//              child: Row(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: [
                 
//                  Expanded(
//                    flex: 3,
//                    child: Container(
//                      child: Card(
//                         child: Column(
//                           children: [ 
//                           CustomizedListTile(
//                             color: Theme.of(context).accentColor,
//                             onTap: () {
//                               // Navigator.pushNamed(context, '/profile');
//                             },
//                             text: 'Register your Business',
//                             icon: Icons.app_registration,
//                             leadingIcon: Icons.keyboard_arrow_right,
//                           ),                          
//                           CustomizedListTile(
//                             color: Theme.of(context).accentColor,
//                             onTap: () {
//                               // Navigator.pushNamed(context, '/profile');
//                             },
//                             text: 'Validate the status of your CAC & TIN',
//                             icon: Icons.verified,
//                             // leadingIcon: Icons.keyboard_arrow_right,
//                           ),
//                           CustomizedListTile(
//                             color: Theme.of(context).accentColor,
//                             onTap: () {
//                               // Navigator.pushNamed(context, '/profile');
//                             },
//                             text: 'View Wallet Account for Business',
//                             icon: Icons.grid_view,
//                           ),
//                           CustomizedListTile(
//                             color: Theme.of(context).accentColor,
//                             onTap: () {
//                               // Navigator.pushNamed(context, '/profile');
//                             },
//                             text: 'View Business Rating',
//                             icon: Icons.grid_view,
//                           ),
//                           ],
//                         ),
//                       ),
//                    ),
//                  ),
//                  Expanded(
//                   flex: 5,
//                   child: Container(
//                     child: Column(
//                   //  mainAxisAlignment: MainAxisAlignment.center,
//                    crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                       SizedBox(
//                         height: size.height * 0.06,
//                       ),
//                       CustomTextField(
//                           hintText: 'Business Name',
//                         ),
//                         CustomTextField(
//                           hintText: 'CAC Number',
//                         ),
//                         CustomTextField(
//                           hintText: 'Tax Id',
//                         ),
//                         CustomElevatedButton(
//                           width: size.width * 0.5,
//                           onPressed: (){
//                             // Navigator.pushNamed(context, '/cug');
//                           },
//                           text: 'Register',
//                           elevation: 1.0,
//                           backgroundcolor: Theme.of(context).accentColor,                  
//                         ),
//                       ],
//                     ),  
//                    ),
//                  ),
//                  Expanded(
//                    flex: 4,
//                    child: Container(
//                      child: Card(
//                       elevation: 2.0,
//                       // shape: ,
//                       margin: EdgeInsets.all(5.0),
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           children: [
//                             Row(
//                               // crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text('Cakes by Joke Ltd', style: TextStyle(fontWeight:FontWeight.w300, fontSize: 20.0)),
//                                 SizedBox(
//                                   width: size.width * 0.02,
//                                 ),
//                                 Icon(Icons.check_circle_outline, color: Theme.of(context).accentColor)
                            
//                               ],
//                             ),
//                           ],
//                         ),
//                      ),
//                    ),
//                  ),
//                  ),
//               ],
              
//              ),
//            ),
//          ],
//        ),
//               // ),
//       //       ],
//       //     ),
//       //    ],
//       //  ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/app_bar.dart';
import 'package:social_citizen_web/widgets/dashboard_sme.dart';
import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/links.dart';
import 'package:social_citizen_web/widgets/right_side_sme.dart';
import 'package:social_citizen_web/widgets/side_bar_sme.dart';

class MySME extends StatefulWidget {
  MySME({Key key}) : super(key: key);

  @override
  _MySMEState createState() => _MySMEState();
}

class _MySMEState extends State<MySME> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar.build(context),
      backgroundColor: Colors.white,
       drawer: Drawer(
         child: MainDrawer(),
       ),
      body: Row(
        children: [
          SideBar(),
          Dashboard(),
          Profile(),
        ],
      ),
    );
  }
}

