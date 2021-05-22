import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
import 'package:social_citizen_web/widgets/custom_textform_field.dart';
import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/links.dart';

class EGovernmentPortal extends StatefulWidget {
  EGovernmentPortal({Key key}) : super(key: key);

  _EGovernmentPortalState createState() => _EGovernmentPortalState();
}

class _EGovernmentPortalState extends State<EGovernmentPortal> {
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
                   hintText: 'Search for citizen',
                   icon: Icon(Icons.search),
                 ),
                ],
              ),  
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[                           
                CitizenCard(),
                // ),
                SizedBox(
                  width: size.width * 0.06,
                ),  
                 Expanded(
                  child: Container(
                     child: Column(            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/user.png'),
              ),
              SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Citizen Id:', style: TextStyle(fontWeight:FontWeight.w300, fontSize: 20.0)),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  Text('AKJV1904BA', style: TextStyle( fontSize: 15.0)),

                ],
              ),
              SizedBox(
                    height: size.height * 0.02,
                  ),
              Row (
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: CustomElevatedButton(
                         width: size.width * 0.2,
                         text: 'Fine',
                         onPressed: (){},
                         backgroundcolor:Theme.of(context).accentColor,
                       ),
                  ),
                  // SizedBox(
                  //   width: size.width * 0.03,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: CustomElevatedButton(
                        width: size.width * 0.2,
                        text: 'Fine',
                        onPressed: (){},
                        backgroundcolor:Theme.of(context).accentColor,
                      ),
                  )
                ],
              ), 
              Row (
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: CustomElevatedButton(
                         width: size.width * 0.2,
                         text: 'Fine',
                         onPressed: (){},
                         backgroundcolor:Theme.of(context).accentColor,
                       ),
                  ),
                  // SizedBox(
                  //   width: size.width * 0.03,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: CustomElevatedButton(
                        width: size.width * 0.2,
                        text: 'Fine',
                        onPressed: (){},
                        backgroundcolor:Theme.of(context).accentColor,
                      ),
                  )
                ],
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

class CitizenCard extends StatelessWidget {
  const CitizenCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      margin: EdgeInsets.only(left: 25),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/user.png'),
              ),
              SizedBox(
                    height: size.height * 0.02,
                  ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Citizen Id:', style: TextStyle(fontWeight:FontWeight.w300, fontSize: 20.0)),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  Text('AKJV1904BA', style: TextStyle( fontSize: 15.0)),

                ],
              ),
            ],               
          ),
        ),
    );
  }
}