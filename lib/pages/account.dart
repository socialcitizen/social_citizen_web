// import 'package:flutter/material.dart';
// import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
// import 'package:social_citizen_web/widgets/custom_textform_field.dart';
// import 'package:social_citizen_web/widgets/customized_tile.dart';
// import 'package:social_citizen_web/widgets/drawer.dart';
// import 'package:social_citizen_web/widgets/links.dart';

// class BankAccount extends StatefulWidget {
//   BankAccount({Key key}) : super(key: key);

//   _BankAccountState createState() => _BankAccountState();
// }

// class _BankAccountState extends State<BankAccount> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//        appBar: AppBar(
//          title: NavLinks(),
//          backgroundColor: Colors.white,
//          iconTheme: IconThemeData(
//           color: Theme.of(context).accentColor,
//           // size: 40.0,
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
//                             text: 'View Account Details',
//                             icon: Icons.grid_view,
//                             leadingIcon: Icons.keyboard_arrow_right,
//                           ),                          
//                           CustomizedListTile(
//                             color: Theme.of(context).accentColor,
//                             onTap: () {
//                               // Navigator.pushNamed(context, '/profile');
//                             },
//                             text: 'View Transaction History',
//                             icon: Icons.grid_view,
//                             // leadingIcon: Icons.keyboard_arrow_right,
//                           ),
//                           CustomizedListTile(
//                             color: Theme.of(context).accentColor,
//                             onTap: () {
//                               // Navigator.pushNamed(context, '/profile');
//                             },
//                             text: 'Transfer to same Bank',
//                             icon: Icons.forward,
//                           ),
//                           CustomizedListTile(
//                             color: Theme.of(context).accentColor,
//                             onTap: () {
//                               // Navigator.pushNamed(context, '/profile');
//                             },
//                             text: 'Transfer to other Banks',
//                             icon: Icons.forward,
//                           ),
//                           ],
//                         ),
//                       ),
//                    ),
//                  ),
//                  Expanded(
//                    flex: 5,
//                    child: Container(
//                      height: size.height * 0.3,
//                      child: Card(
//                        elevation: 2.0,
//                        color: Theme.of(context).accentColor,
//                        shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(15))), 
//                     //    child: Column(
//                     //      child: Padding(
//                     // padding: const EdgeInsets.all(15.0),
//                     child: Padding(
//                       padding: const EdgeInsets.all(15.0),
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(15.0),
//                             child: Row(
//                               // crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text('Account Number:', style: TextStyle(fontWeight:FontWeight.w300, fontSize: 20.0, color: Colors.white)),
//                                 SizedBox(
//                                   width: size.width * 0.02,
//                                 ),
//                                 Text('0050678943', style: TextStyle(fontWeight:FontWeight.w100, fontSize: 20.0, color: Colors.white)),

//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: size.height * 0.02,
//                           ),
//                            Padding(
//                              padding: const EdgeInsets.all(15.0),
//                              child: Row(
//                               children: [
//                                 Text('Zenith', style: TextStyle(fontWeight:FontWeight.w300, fontSize: 20.0, color: Colors.white)),
//                                 SizedBox(
//                                   width: size.width * 0.01,
//                                 ),
//                                 // Text('0050678943'),

//                               ],
//                           ),
//                            ),
//                           SizedBox(
//                             height: size.height * 0.02,
//                           ),
//                           Row(
//                             children: [
//                               Text('Account Balance:', style: TextStyle(fontWeight:FontWeight.w300, fontSize: 20.0, color: Colors.white)),
//                               SizedBox(
//                                 width: size.width * 0.01,
//                               ),
//                               Text('#55,000.00', style: TextStyle(fontWeight:FontWeight.w100, fontSize: 20.0, color: Colors.white)),

//                             ],                      
//                           )
//                         ],
//                          ),
//                     ),
//                      ),
//                    )
//                  ),
//                  Expanded(
//                    flex: 4,
//                    child: Container()
//                  ),
//              ],
//              ),
//            ),
        
//          ],
//        ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/dashboard.dart';
import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/links.dart';
import 'package:social_citizen_web/widgets/right_side.dart';
import 'package:social_citizen_web/widgets/side_nav.dart';

class BankAccount extends StatefulWidget {
  BankAccount({Key key}) : super(key: key);

  @override
  _BankAccountState createState() => _BankAccountState();
}

class _BankAccountState extends State<BankAccount> {
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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