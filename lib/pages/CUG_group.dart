import'package:flutter/material.dart';
// import 'package:social_citizen_web/widgets/CUG_Row.dart';
import 'package:social_citizen_web/widgets/chips.dart';
// import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/forum_grid.dart';
import 'package:social_citizen_web/widgets/links.dart';

class CUGGroupPage extends StatefulWidget {
  CUGGroupPage({Key key}) : super(key: key);

  _CUGGroupPageState createState() => _CUGGroupPageState();
}

class _CUGGroupPageState extends State<CUGGroupPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
    appBar: AppBar(
      title: NavLinks(),
      backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Theme.of(context).accentColor,
        ),
    ),
    backgroundColor: Colors.white,
    drawer: Drawer(
      child: MainDrawer(),
    ),
    body: Column(
      children: [
        SizedBox(
          height: size.height * 0.06,
        ),
        // CUGRow(),
        Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        flex: 1,
        child: Column(
          children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Text('Click the icon below to start a new thread', 
               style:  TextStyle(fontWeight: FontWeight.w200, fontSize:40.0),
               ),
               SizedBox(
                height: size.height * 0.03,
              ),
               IconButton(
                 icon: Icon(Icons.add_circle_outline), 
                color: Theme.of(context).accentColor,
                onPressed: () {
                  Navigator.pushNamed(context, '/newthread');
                },
               iconSize: 60.0,
               ),
             ],
           )
          ],
        ),
      ),
      SizedBox(
        width: size.width * 0.06,
      ),
      Expanded(
        flex: 3,
        child: Column(
          children: [
           chipList(),
           Forum(),
          ],
        ),
      ),
    ],
        ),
      ],
    ),
        );
    
  }
}