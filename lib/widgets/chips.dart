// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// class MyChip extends StatelessWidget {
//   final String label;
//   final Color color;
//   const MyChip({
//     Key key,
//     this.label,
//     this.color
//     }) : super(key: key);

//   @override
//   Widget build (BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(      
//       child: InkWell(
//         onTap: () {
//           Navigator.pushNamed(context, '/cug');
//         },
//         child: Chip(
//           labelPadding: EdgeInsets.all(4.0),
//           avatar: CircleAvatar(
//             backgroundColor: Colors.white70,
//             child: Text(
//               label[0].toUpperCase()
//             ),
//           ),
//           label: Text(
//             label,
//             style: TextStyle(
//               color: Colors.white,
//             ),
//           ),
//           backgroundColor: color,
//           elevation: 6.0,
//           shadowColor: Colors.grey[60],
//           padding: EdgeInsets.all(4.0),
//         ),
//       ),
//     );
//   }
// }

// chipList() {
//   return Wrap(
//     spacing: 6.0,
//     runSpacing: 6.0,
//     children: <Widget>[
//       GestureDetector(
//         child: MyChip(
//           label:'Men', color: Color(0xFFff6666))),
//       MyChip(label: 'Oredo', color: Color(0xFF007f5c)),
//       MyChip(label: 'Developer', color:  Color(0xFF5f65d3)),
//       MyChip(label: 'Single', color:  Color(0xFF19ca21)),
//       MyChip(label:'Doctor', color: Color(0xFF007f5c)),
//       MyChip(label:'Married', color: Color(0xFF60230b)),
//       MyChip(label:'Female', color: Color(0xFF5f65d3)),
//       MyChip(label:'Cook', color: Color(0xFFff6666)),
//     ],
//   );
// }

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyChip extends StatelessWidget {
  final String label;
  final Color color;
  const MyChip({
    Key key,
    this.label,
    this.color
    }) : super(key: key);

  @override
  Widget build (BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(      
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/cug');
        },
        child: Chip(
          // labelPadding: EdgeInsets.all(4.0),
          // avatar: CircleAvatar(
          //   backgroundColor: Colors.white70,
          //   child: Text(
          //     label[0].toUpperCase()
          //   ),
          // ),
          label: Text(
            label,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: color,
          elevation: 6.0,
          shadowColor: Colors.grey[60],
          padding: EdgeInsets.all(4.0),
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
        child: MyChip(
          label:'Men', color: Color(0xFFff6666))),
      MyChip(label: 'Oredo', color: Color(0xFF007f5c)),
      MyChip(label: 'Developer', color:  Color(0xFF5f65d3)),
      MyChip(label: 'Single', color:  Color(0xFF19ca21)),
      MyChip(label:'Doctor', color: Color(0xFF007f5c)),
      MyChip(label:'Married', color: Color(0xFF60230b)),
      MyChip(label:'Female', color: Color(0xFF5f65d3)),
      MyChip(label:'Cook', color: Color(0xFFff6666)),
    ],
  );
}