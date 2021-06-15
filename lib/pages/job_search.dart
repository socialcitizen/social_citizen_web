import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
import 'package:social_citizen_web/widgets/custom_textform_field.dart';
import 'package:social_citizen_web/widgets/customized_tile.dart';
import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/links.dart';

// class JobSearchPage extends StatefulWidget {
//   final String title;

//   JobSearchPage({
//     Key key,
//     this.title
//     }) : super(key: key);

//   _JobSearchPageState createState() => _JobSearchPageState();
// }

class JobSearchPage extends StatelessWidget {
  final String title;
  final String text;
  final String caption;
  // final Widget widget;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  // final IconData icon;
  // final String iconText;

  JobSearchPage(
      {Key key,
      // this.icon,
      // this.iconText,
      this.title: 'Job Opportunities',
      this.text: 'Search jobs',
      this.caption: 'Apply',
      // this.widget,
      this.text1 : 'Job Description',
      this.text2: 'Job Requirement',
      this.text3: 'Job Prerequisite',
      this.text4: 'Apply'
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        //  leading: Text('Yo'),
        title: Text(
          title,
          style: TextStyle(color: Color(0xff008753)),
        ),
        actions: [NavLinks()],
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Color(0xff008753),
        ),
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height * 0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  hintText: text,
                  icon: Icon(Icons.search),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.09,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                
                Expanded(
                  child: Column(
                    children: [
                      CustomizedListTile(
                        color: Theme.of(context).accentColor,
                        onTap: () {
                          // Navigator.pushNamed(context, '/profile');
                        },
                        text: 'Sort by closest to me',
                        icon: Icons.filter_list,
                      ),
                      Container(
                        height: size.height,
                        width: size.width,
                        child: ListView.builder(
                            itemCount: 2,
                            itemBuilder: (BuildContext context, int index) {
                              return ListileCard();
                            }),
                      ),
                    ],
                  ),
                 
                ),
                SizedBox(
                  width: size.width * 0.06,
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          text1,
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w800),
                        ),
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu mi bibendum neque egestas congue quisque egestas diam. Est sit amet facilisis magna etiam tempor orci'),
                        Text(
                          text2,
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w800),
                        ),
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu mi bibendum neque egestas congue quisque egestas diam. Est sit amet facilisis magna etiam tempor orci'),
                        Text(
                          text3,
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w800),
                        ),
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu mi bibendum neque egestas congue quisque egestas diam. Est sit amet facilisis magna etiam tempor orci'),
                        Text(
                          text4,
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w800),
                        ),
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu mi bibendum neque egestas congue quisque egestas diam. Est sit amet facilisis magna etiam tempor orci'),
                        // Text(
                        //   'Application Deadline',
                        //   style: TextStyle(
                        //       fontSize: 15.0, fontWeight: FontWeight.w800),
                        // ),
                        // Text(
                        //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu mi bibendum neque egestas congue quisque egestas diam. Est sit amet facilisis magna etiam tempor orci'),
                        CustomElevatedButton(
                          width: size.width * 0.09,
                          onPressed: () {
                            // Navigator.pushNamed(context, '/home');
                          },
                          text: caption,
                          elevation: 1.0,
                          backgroundcolor: Theme.of(context).accentColor,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ListileCard extends StatelessWidget {
  const ListileCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("Sale Representative/ Konga.com"),
        subtitle: Text('Closing Date: 13th July'),
      ),
    );
  }
}
