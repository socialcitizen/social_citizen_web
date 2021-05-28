import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/links.dart';

class PostDetails extends StatefulWidget {
  PostDetails({Key key}) : super(key: key);

  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.06,
          ),
          Text('New ways of losing weight without dieting', 
            style:  TextStyle(fontWeight: FontWeight.bold, fontSize:40.0),
            // textAlign: TextAlign.center,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Container(
            width: size.width * 0.5,
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut lectus arcu bibendum at varius vel pharetra vel. Morbi tincidunt ornare massa eget egestas purus viverra. Malesuada bibendum arcu vitae elementum curabitur. Et magnis dis parturient montes nascetur ridiculus mus mauris. Vestibulum lorem sed risus ultricies tristique nulla aliquet. Tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada proin. Fusce ut placerat orci nulla. Fringilla est ullamcorper eget nulla facilisi. Congue eu consequat ac felis. Tincidunt praesent semper feugiat nibh sed pulvinar. Arcu bibendum at varius vel pharetra vel turpis. Massa ultricies mi quis hendrerit dolor magna eget est. Potenti nullam ac tortor vitae purus faucibus ornare suspendisse. Senectus et netus et malesuada fames ac turpis. Egestas dui id ornare arcu odio ut sem. Lectus magna fringilla urna porttitor rhoncus dol', 
              style:  TextStyle(letterSpacing: 1.0),
              // textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: size.width * 0.03,
          ),
          Row(
            children: [
               Icon(Icons.thumb_up, 
               color: Theme.of(context).accentColor,
               size: 30.0,
               ),
               SizedBox(
                width: size.width * 0.03,
               ),
              Icon(Icons.thumb_down, 
              color: Theme.of(context).accentColor,
              size: 30.0,
              ),
               SizedBox(
                width: size.width * 0.03,
               ),
               Icon(Icons.report, 
              color: Theme.of(context).accentColor,
              size: 30.0,
              ),
              SizedBox(
                width: size.width * 0.03,
               ),
               Icon(Icons.reply, 
              color: Theme.of(context).accentColor,
              size: 30.0,
              ),
              SizedBox(
                width: size.width * 0.03,
               ),
               Icon(Icons.format_quote, 
              color: Theme.of(context).accentColor,
              size: 30.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}