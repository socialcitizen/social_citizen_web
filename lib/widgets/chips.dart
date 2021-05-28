import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Chips extends StatelessWidget {
  final String label;
  final Color color;
  const Chips({
    Key key,
    this.label,
    this.color
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(      
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/cug');
        },
        child: Chip(
          labelPadding: EdgeInsets.all(2.0),
          avatar: CircleAvatar(
            backgroundColor: Colors.white70,
            child: Text(label[0].toUpperCase()),
          ),
          label: Text(
            label,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: color,
          elevation: 6.0,
          shadowColor: Colors.grey[60],
          padding: EdgeInsets.all(8.0),
        ),
      ),
    );
  }
}

chipList() {
  return Wrap(
    spacing: 6.0,
    runSpacing: 6.0,
    children: <Widget>[
      GestureDetector(
        child: Chips(
          label:'Men', color: Color(0xFFff6666))),
      Chips(label: 'Oredo', color: Color(0xFF007f5c)),
      Chips(label: 'Developer', color:  Color(0xFF5f65d3)),
      Chips(label: 'Single', color:  Color(0xFF19ca21)),
      Chips(label:'Doctor', color: Color(0xFF007f5c)),
      Chips(label:'Married', color: Color(0xFF60230b)),
      Chips(label:'Female', color: Color(0xFF5f65d3)),
      Chips(label:'Cook', color: Color(0xFFff6666)),
    ],
  );
}
// chipList() {
//  return Expanded(
//   //  width: 16,
//     child: ListView(
//      scrollDirection: Axis.horizontal,
//     padding: const EdgeInsets.all(8),
//     children: <Widget>[
//       Chips(label:'Men', color: Color(0xFFff6666)),
//       Chips(label: 'Eti-osa', color: Color(0xFF007f5c)),
//       Chips(label: 'Developer', color:  Color(0xFF5f65d3)),
//       Chips(label: 'Single', color:  Color(0xFF19ca21)),
//       Chips(label:'Doctor', color: Color(0xFF007f5c)),
//       Chips(label:'Married', color: Color(0xFF60230b)),
//       Chips(label:'Female', color: Color(0xFF5f65d3)),
//       Chips(label:'Cook', color: Color(0xFFff6666)),
//     ],
// ),
//  );
// }



// Container(
//                 // padding: EdgeInsets.only(left:40, right:40, ),
//                 color: Theme.of(context).primaryColor.withRed(200),//Colors.black,
//                 height: size.height * 0.15,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.only(top: 25),
//                       child: Text(
//                         'Copyright ©2021, All Rights Reserved',
//                         style: TextStyle(
//                           color: Colors.white
//                         )
//                       ),
//                     ),
//                     Text('Powered by Intelytics', style:TextStyle(color: Colors.white)),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('Link 1', style:TextStyle(color: Colors.white)),
//                         SizedBox(width:  size.width * 0.01),
//                         Text('Link 2', style:TextStyle(color: Colors.white)),
//                         SizedBox(width:  size.width * 0.01),
//                         Text('Link 3', style:TextStyle(color: Colors.white)),
//                         SizedBox(width:  size.width * 0.01),
//                         Text('Link 4', style:TextStyle(color: Colors.white)),

//                     ],
//                     ),
//                   ],
//                 ),
//               ),