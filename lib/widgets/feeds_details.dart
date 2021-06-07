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
                    Container(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 20.0,
                            ),
                            Image.asset("assets/images/explanation.jpg", width: size.width * 0.6, height: size.height * 0.6),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text('How to register for NIN', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lectus vestibulum mattis ullamcorper velit sed. Sit amet risus nullam eget felis. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt. Tempus iaculis urna id volutpat. Vitae ultricies leo integer malesuada. Netus et malesuada fames ac turpis egestas. Elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl. In arcu cursus euismod quis viverra nibh cras pulvinar mattis. Scelerisque varius morbi enim nunc faucibus a pellentesque sit amet. Aliquam ultrices sagittis orci a. Purus non enim praesent elementum. Lectus magna fringilla urna porttitor rhoncus dolor purus non. Amet risus nullam eget felis eget. Proin fermentum leo vel orci porta non pulvinar. Sit amet cursus sit amet dictum. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae. Eget mi proin sed libero enim sed faucibus turpis in.', textAlign: TextAlign.justify)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: 
                    Container(),
                  ),
                ],
              ),
            )
          ]
        )
      )
    );
  }
}