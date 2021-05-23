import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/custom_textform_field.dart';
import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/links.dart';

class JobSearchPage extends StatefulWidget {
  JobSearchPage({Key key}) : super(key: key);

  _JobSearchPageState createState() => _JobSearchPageState();
}

class _JobSearchPageState extends State<JobSearchPage> {
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
       body: 
       SingleChildScrollView(
        child: Column(
          children: <Widget>[
             SizedBox(
                  height: size.height * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 CustomTextField(
                   hintText: 'Search Jobs',
                   icon: Icon(Icons.search),
                 ),
                ],
              ),  
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[                           
                Expanded(
                  child: Container(
                    height: size.height,
                    width: size.width,
                    child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (BuildContext context,int index){
                      return ListileCard();
                    }
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.06,
                ),  
                 Expanded(
                  child: Container(
                     child: Column( 
                       children: <Widget>[
                         Text('Job Description', style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w800
                          ),
                        ),
                         Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu mi bibendum neque egestas congue quisque egestas diam. Est sit amet facilisis magna etiam tempor orci'),
                         Text('Job Requirements', style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w800
                          ),),
                         Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu mi bibendum neque egestas congue quisque egestas diam. Est sit amet facilisis magna etiam tempor orci'),
                         Text('Job Prerequisite', style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w800
                          ),),
                         Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu mi bibendum neque egestas congue quisque egestas diam. Est sit amet facilisis magna etiam tempor orci'),
                         Text('How To Apply', style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w800
                          ),),
                         Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu mi bibendum neque egestas congue quisque egestas diam. Est sit amet facilisis magna etiam tempor orci'),
                         Text('Application Deadline', style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w800
                          ),),
                         Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu mi bibendum neque egestas congue quisque egestas diam. Est sit amet facilisis magna etiam tempor orci'),
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
        title:Text("Sale Representative/ Konga.com" ),
        subtitle: Text('Closing Date: 13th July'),
        ),
    );
  }
}