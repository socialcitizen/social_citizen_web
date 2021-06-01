import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/links.dart';

class FeedsDetails extends StatelessWidget {
  const FeedsDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/logo_no_bg.png", width: size.width * 0.06, height: size.height * 0.06),
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

       body: SafeArea(
         child: Column(
           children: [
            Flexible(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: 
                    Container(),
                  ),
                  Expanded(
                    flex: 6,
                    child: 
                    Container(),
                  ),
                  Expanded(
                    flex: 3,
                    child: 
                    Container(),
                  ),
                ],
         ),
       )
    );
  }
}