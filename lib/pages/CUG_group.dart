import 'package:flutter/material.dart';
// import 'package:social_citizen_web/widgets/CUG_Row.dart';
import 'package:social_citizen_web/widgets/chips.dart';
// import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/forum_grid.dart';
import 'package:social_citizen_web/widgets/links.dart';

// class CUGGroupPage extends StatefulWidget {
//

//   _CUGGroupPageState createState() => _CUGGroupPageState();
// }

class CUGGroupPage extends StatelessWidget {
  final String title;
  final String escalation;
  CUGGroupPage({
    Key key,
    this.title = 'CUG',
    this.escalation = 'Click the icon below to start a new thread',
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        actions: [NavLinks()],
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            escalation,
                            style: TextStyle(
                                fontWeight: FontWeight.w200, fontSize: 40.0),
                          ),
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
