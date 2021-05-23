import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
import 'package:social_citizen_web/widgets/custom_textform_field.dart';
import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/links.dart';

class MySME extends StatefulWidget {
  MySME({Key key}) : super(key: key);

  _MySMEState createState() => _MySMEState();
}

class _MySMEState extends State<MySME> {
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Card(
                  elevation: 2.0,
                  // shape: ,
                  margin: EdgeInsets.all(5.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Cakes by Joke Ltd', style: TextStyle(fontWeight:FontWeight.w300, fontSize: 20.0)),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Icon(Icons.check_circle_outline, color: Theme.of(context).accentColor)

                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                         ListTile(
                           title: Text(
                            'Add Business', 
                            style: TextStyle(
                              fontSize: 20.0,                  
                              ),),
                            leading: Icon(
                              Icons.add_circle_outline,
                              color: Theme.of(context).accentColor,
                              ),
                         ),
                        // SizedBox(
                        //   height: size.height * 0.02,
                        // ),
                        // Row(
                        //   children: [
                        //     Text('Account Balance:', style: TextStyle(fontWeight:FontWeight.w300, fontSize: 20.0)),
                        //     SizedBox(
                        //       width: size.width * 0.01,
                        //     ),
                        //     Text('#55,000.00', style: TextStyle(fontWeight:FontWeight.w100, fontSize: 20.0)),

                        //   ],
                        // )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex:3,
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                   CustomTextField(
                      hintText: 'Business Name',
                    ),
                    CustomTextField(
                      hintText: 'CAC Number',
                    ),
                    CustomTextField(
                      hintText: 'Tax Id',
                    ),
                    CustomElevatedButton(
                      width: size.width * 0.5,
                      onPressed: (){
                        // Navigator.pushNamed(context, '/cug');
                      },
                      text: 'Transfer',
                      elevation: 1.0,
                      backgroundcolor: Theme.of(context).accentColor,                  
                    ),
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