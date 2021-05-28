import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/admin_drawer.dart';
import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/links.dart';

class Admin extends StatelessWidget {
  // const Admin({Key key}) : super(key: key);
  
  final List<Map<String, dynamic>> building = [
    {
      'title': 'New ways of losing weight without dieting',
      'callToAction': '/postdetails',
      'suBTitle': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
    },

    {
      'title': 'Insecurity in the Country',
      'callToAction': '/postdetails',
      'suBTitle': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
    },

    {
      'title': 'Outrageous prices for food items ',
      'callToAction': '/postdetails',
      'suBTitle': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
    },

    
    {
      'title': 'App Users',
      'callToAction': '',
      'suBTitle': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
    },


    {
      'title': 'Feeds',
      'callToAction': '',
      'suBTitle': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
    },


    {
      'title': 'Ads',
      'callToAction': '',
      'suBTitle': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
    },


    {
      'title': 'Job Posting',
      'callToAction': '',
      'suBTitle': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
    },

    {
      'title': 'Prices',
      'callToAction': '',
      'suBTitle': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
    },
  ];



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
     return Scaffold(
       appBar: AppBar(
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
       body: Column(
         children: [
           Expanded(
             child: Container(
              // color: Colors.blue,
              padding: const EdgeInsets.all(4.0),
              margin: EdgeInsets.all(30.0),
              child: GridView.builder(
                shrinkWrap: true,
                // physics: ScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                itemCount: building.length ,
                itemBuilder: (BuildContext context, int index) {
                  final currentItem = building[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, currentItem['callToAction']).toString();
                    },
                    child: Card(
                      // color: Colors.blue,
                      elevation: 2.0,
                      child: Container(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[  
                            Image.asset('assets/images/user.png', width: size.width * 0.08),                        
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            Text(currentItem['title'], 
                            style:  TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            ),
                            Text(currentItem['suBTitle'], 
                            // style:  TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            ),
                          ],
                      ),
                      ),
                    ),
                  );
                },
              ),
          ),
           ),
    
         ],
       ),
    );
  }
}