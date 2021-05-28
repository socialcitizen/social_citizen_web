import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:social_citizen_web/widgets/customized_tile.dart';

class Business extends StatefulWidget {
  Business({Key key}) : super(key: key);

  // final String title;

  @override
  _BusinessState createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    );

    return Container( 
      height: 140.0,
      width: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),     
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ExpansionTileCard(
              key: cardA,
              // leading: CircleAvatar(child: Text('A')),
              title: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Cakes by Joke Ltd', style: TextStyle(fontWeight:FontWeight.w300, fontSize: 20.0)),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Icon(Icons.check_circle_outline, color: Theme.of(context).accentColor)
              
                ],
              ),
              // subtitle: Text('I expand!'),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Bennie Fabrics', style: TextStyle(fontWeight:FontWeight.w300, fontSize: 20.0)),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Icon(Icons.check_circle_outline, color: Theme.of(context).accentColor)
                        
                          ],
                        ),

                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Jenny\'s Glow Luxury Soap', style: TextStyle(fontWeight:FontWeight.w300, fontSize: 20.0)),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Icon(Icons.check_circle_outline, color: Theme.of(context).accentColor)
                        
                          ],
                        ),
                        CustomizedListTile(
                          color: Theme.of(context).accentColor,
                          onTap: () {
                            // Navigator.pushNamed(context, '/profile');
                          },
                          text: 'Add Business',
                          icon: Icons.add_circle,
                        ),
                      ],
                    ),
                  ),
                ),
                // ButtonBar(
                //   alignment: MainAxisAlignment.spaceAround,
                //   buttonHeight: 52.0,
                //   buttonMinWidth: 90.0,
                //   children: <Widget>[
                //     TextButton(
                //       style: flatButtonStyle,
                //       onPressed: () {
                //         cardB.currentState?.expand();
                //       },
                //       child: Column(
                //         children: <Widget>[
                //           Icon(Icons.arrow_downward),
                //           Padding(
                //             padding: const EdgeInsets.symmetric(vertical: 2.0),
                //           ),
                //           Text('Open'),
                //         ],
                //       ),
                //     ),
                //     TextButton(
                //       style: flatButtonStyle,
                //       onPressed: () {
                //         cardB.currentState?.collapse();
                //       },
                //       child: Column(
                //         children: <Widget>[
                //           Icon(Icons.arrow_upward),
                //           Padding(
                //             padding: const EdgeInsets.symmetric(vertical: 2.0),
                //           ),
                //           Text('Close'),
                //         ],
                //       ),
                //     ),
                //     TextButton(
                //       style: flatButtonStyle,
                //       onPressed: () {
                //         cardB.currentState?.toggleExpansion();
                //       },
                //       child: Column(
                //         children: <Widget>[
                //           Icon(Icons.swap_vert),
                //           Padding(
                //             padding: const EdgeInsets.symmetric(vertical: 2.0),
                //           ),
                //           Text('Toggle'),
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 12.0),
//             child: ExpansionTileCard(
//               key: cardB,
//               expandedTextColor: Colors.red,
//               leading: CircleAvatar(child: Text('B')),
//               title: Text('Tap me!'),
//               subtitle: Text('I expand, too!'),
//               children: <Widget>[
//                 Divider(
//                   thickness: 1.0,
//                   height: 1.0,
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 16.0,
//                       vertical: 8.0,
//                     ),
//                     child: Text(
//                       """Hi there, I'm a drop-in replacement for Flutter's ExpansionTile.

// Use me any time you think your app could benefit from being just a bit more Material.

// These buttons control the card above!""",
//                       style: Theme.of(context)
//                           .textTheme
//                           .bodyText2
//                           .copyWith(fontSize: 16),
//                     ),
//                   ),
//                 ),
//                 ButtonBar(
//                   alignment: MainAxisAlignment.spaceAround,
//                   buttonHeight: 52.0,
//                   buttonMinWidth: 90.0,
//                   children: <Widget>[
//                     TextButton(
//                       style: flatButtonStyle,
//                       onPressed: () {
//                         cardA.currentState?.expand();
//                       },
//                       child: Column(
//                         children: <Widget>[
//                           Icon(Icons.arrow_downward),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(vertical: 2.0),
//                           ),
//                           Text('Open'),
//                         ],
//                       ),
//                     ),
//                     TextButton(
//                       style: flatButtonStyle,
//                       onPressed: () {
//                         cardA.currentState?.collapse();
//                       },
//                       child: Column(
//                         children: <Widget>[
//                           Icon(Icons.arrow_upward),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(vertical: 2.0),
//                           ),
//                           Text('Close'),
//                         ],
//                       ),
//                     ),
//                     TextButton(
//                       style: flatButtonStyle,
//                       onPressed: () {
//                         cardA.currentState?.toggleExpansion();
//                       },
//                       child: Column(
//                         children: <Widget>[
//                           Icon(Icons.swap_vert),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(vertical: 2.0),
//                           ),
//                           Text('Toggle'),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
        ],
      ),
    );
  }
}