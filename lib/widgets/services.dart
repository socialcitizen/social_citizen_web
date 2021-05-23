import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return
     Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // ListTile(
        //   title: Text(
        //   'Edo Connect', 
        //   style: TextStyle(
        //     fontSize: 20.0,                  
        //     ),),
        //   leading: Icon(
        //     Icons.check_circle,
        //     color: Color(0xff800000),
        //     // Theme.of(context).accentColor,
        //     ),
        // ),
        // ListTile(
        //   title: Text(
        //   'Edo Market Place', 
        //   style: TextStyle(
        //     fontSize: 20.0,                  
        //     ),),
        //   leading: Icon(
        //     Icons.check_circle,
        //     color: Color(0xff800000),
        //     // Theme.of(context).accentColor,
        //     ),
        // ),
        // ListTile(
        //   title: Text(
        //   'Edo Business', 
        //   style: TextStyle(
        //     fontSize: 20.0,                  
        //     ),),
        //   leading: Icon(
        //     Icons.check_circle,
        //     color: Color(0xff800000),
        //     // Theme.of(context).accentColor,
        //     ),
        // ),
        // ListTile(
        //   title: Text(
        //   'Edo Socialise', 
        //   style: TextStyle(
        //     fontSize: 20.0,                  
        //     ),),
        //   leading: Icon(
        //     Icons.check_circle,
        //     color: Color(0xff800000),
        //     // Theme.of(context).accentColor,
        //   ),
        // ),
        Row(
          //  crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
         
           Icon(
            Icons.check_circle,
            color: Color(0xff800000),
            // Theme.of(context).accentColor,
            ),
            SizedBox(
                  width: size.width * 0.02,
              ),
               Text(
          'Edo Connect', 
          style: TextStyle(
            fontSize: 20.0,                  
            ),
            ),
            
        ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          
            
          Icon(
            Icons.check_circle,
            color: Color(0xff800000),
            // Theme.of(context).accentColor,
            ),
            SizedBox(
                  width: size.width * 0.02,
              ),
              Text(
          'Edo Market Place', 
          style: TextStyle(
            fontSize: 20.0,                  
            ),),
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          
            
          Icon(
            Icons.check_circle,
            color: Color(0xff800000),
            // Theme.of(context).accentColor,
            ),
            SizedBox(
                  width: size.width * 0.02,
              ),
              Text(
          'Edo Business', 
          style: TextStyle(
            fontSize: 20.0,                  
            ),),
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Icon(
            Icons.check_circle,
            color: Color(0xff800000),
            // Theme.of(context).accentColor,
          ),
          SizedBox(
                  width: size.width * 0.02,
              ),
          Text(
          'Edo Socialise', 
          style: TextStyle(
            fontSize: 20.0,                  
            ),),
            SizedBox(
                  width: size.width * 0.02,
              ),
         
        ],)
      ],
    );
  }
}


