import 'package:flutter/material.dart';
import 'package:social_citizen_web/pages/CUG_group.dart';
import 'package:social_citizen_web/pages/job_search.dart';
import 'package:social_citizen_web/widgets/chips.dart';
import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/links.dart';
import 'package:social_citizen_web/widgets/text.dart';
import 'package:animate_do/animate_do.dart';
import 'package:animations/animations.dart';

class MyHomeScreenOld extends StatefulWidget {
  MyHomeScreenOld({Key key}) : super(key: key);

  @override
  _MyHomeScreenOldState createState() => _MyHomeScreenOldState();
}

class _MyHomeScreenOldState extends State<MyHomeScreenOld> {
  
  
  List<String> tileCaptions = ["Marketplaces", "Jobs", "Connect", "Escalate"];
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build (BuildContext context) {
    Size gMQ = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: NavLinks(),
        // elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Theme.of(context).accentColor,
        ),
        // actionsIconTheme: gActionIconsTheme,
        // backgroundColor: Colors.white
      ),
      backgroundColor: Colors.white,
       drawer: Drawer(
         child: MainDrawer(),         
       ),
      
      body: SafeArea(
        child: Column(                   
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: FadeIn(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                  // Todo: Your CUG chips here,
                  child: chipList()                  
                ),
              ),
            ),

            // Feeds, Tiles & Ads.
            Flexible(
              // alignment: Alignment.bottomCenter,
              child: FadeInUp(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Todo: use column for Feeds
                    Expanded(
                      flex:1,
                      child: SingleChildScrollView(
                          child: Column(
                          children: [
                            Card(
                              elevation:2,
                              // margin: EdgeInsets.all(5.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Feed 1', style: TextStyle(fontSize:40.0)),
                              ),
                            ),
                            Card(
                              elevation:2,
                              // margin: EdgeInsets.all(5.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Feed 2', style: TextStyle(fontSize:40.0)),
                              ),
                            ),
                            Card(
                              elevation:2,
                              // margin: EdgeInsets.all(5.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Feed 2', style: TextStyle(fontSize:40.0)),
                              ),
                            ),
                            Card(
                              elevation:2,
                              // margin: EdgeInsets.all(5.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Feed 2', style: TextStyle(fontSize:40.0)),
                              ),
                            ),
                            Card(
                              elevation:2,
                              // margin: EdgeInsets.all(5.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Feed 2', style: TextStyle(fontSize:40.0)),
                              ),
                            ),
                            Card(
                              elevation:2,
                              // margin: EdgeInsets.all(5.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Feed 2', style: TextStyle(fontSize:40.0)),
                              ),
                            ),
                            Card(
                              elevation:2,
                              // margin: EdgeInsets.all(5.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Feed 2', style: TextStyle(fontSize:40.0)),
                              ),
                            ),
                            Card(
                              elevation:2,
                              // margin: EdgeInsets.all(5.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Feed 2', style: TextStyle(fontSize:40.0)),
                              ),
                            ),
                            Card(
                              elevation:2,
                              // margin: EdgeInsets.all(5.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Feed 2', style: TextStyle(fontSize:40.0)),
                              ),
                            ),
                          ],
                        ),
                      )
                      ),
                    // Tiles.
                    Container(
                      // height: gMQ.height * 0.2,
                      width: gMQ.width * 0.5,
                      child: GridView.count(
                        // shrinkWrap: true,
                        // scrollDirection: Axis.vertical,
                        mainAxisSpacing: 0.0,
                        // gMQ.height * 0.003,
                        crossAxisCount: 2,                  
                        children: List.generate(tileCaptions.length, (index) {

                          String caption = tileCaptions[index];
                          
                          return Card(
                            elevation: 2,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: BorderSide(
                                color: Colors.black
                              )
                            ),
                            child: Material(
                              shape: CircleBorder(),
                              color: Colors.white,
                              child: InkResponse(
                                borderRadius: BorderRadius.circular(32),
                                splashColor: Colors.grey,
                                radius: gMQ.width * 100,                            
                                onTap: () async {

                                  await Navigator.of(context).push(
                                    MaterialPageRoute<void>(
                                    builder: (BuildContext context) {
                                      return OpenContainer(
                                        transitionType: ContainerTransitionType.fade,
                                        openBuilder: (BuildContext context, VoidCallback _) {
                                          return Container();
                                        },
                                        closedElevation: 6.0,
                                        closedShape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(50),
                                          ),
                                        ),
                                        closedColor: Theme.of(context).colorScheme.secondary,
                                        closedBuilder: (BuildContext context, VoidCallback openContainer) {
                                                                        
                                          var route;
                                          // String routeName;
                                          // "Marketplaces", "Jobs", "Connect", "Escalate"
                                          switch (caption) {
                                            case "Marketplaces":
                                              route = JobSearchPage();
                                              // routeName = MyPageStateNames.angel_home.toString();
                                              break;
                                            case "Jobs":
                                              route = JobSearchPage();
                                              // routeName = MyPageStateNames.draax_home.toString();
                                              break;
                                            case "Connect":
                                              route = JobSearchPage();
                                              // routeName = MyPageStateNames.school_home.toString();
                                              break;
                                            case "Escalate":
                                            default:
                                              route = CUGGroupPage();
                                              // routeName = MyPageStateNames.home.toString();
                                          }
                                          return SizedBox(
                                            height: 50,
                                            width: 30,
                                            child: route,
                                          );
                                        },
                                      );
                                    }
                                  ));
                                },
                                child: Container(
                                  height: gMQ.height * 0.3,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Padding(
                                      //   padding: const EdgeInsets.all(4.0),
                                      //   child: Image.asset(
                                      //     'assets/images/arms.png', 
                                      //     // width: size.width * 0.15
                                      //     // Todo: service.LogoURL,
                                      //     // fit: BoxFit.fitWidth,
                                      //     width: gMQ.width * 0.5,
                                      //     height: gMQ.height * 0.075,
                                      //   ),
                                      // ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 3.0),
                                        child: Image.asset(
                                            'assets/images/arms.png', width: gMQ.width * 0.15,),
                                      ),

                                      MyTitleText(
                                        text: caption,                                  
                                        color: Colors.black,
                                        // bold: true,
                                        alignment: TextAlign.center,
                                      ),

                                      Flexible(
                                        child: Container(                             
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8.0),
                                              topRight: Radius.circular(8.0),
                                              bottomLeft: Radius.circular(16.0),
                                              bottomRight: Radius.circular(16.0)
                                            ),
                                            border: Border.all(
                                              color: Colors.white,
                                            ),
                                            color: Theme.of(context).accentColor,
                                          ),
                                          width: gMQ.width,
                                          height: gMQ.height * 0.15,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(
                                              child: MySmallerText(
                                                text: "Click here to see what's available for you",
                                                // color: MyAppBloc.parseColor(service.AppBarTextColor),
                                                bold: true,
                                                alignment: TextAlign.center
                                              )
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    Expanded(
                      flex: 1 ,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Card(
                              color: Colors.purple,
                              elevation:2,
                              // margin: EdgeInsets.all(5.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Ad 1', style: TextStyle(fontSize:40.0)),
                              ),
                            ),
                            Card(
                              color: Colors.yellow,
                              elevation:2,
                              // margin: EdgeInsets.all(5.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Ad 2', style: TextStyle(fontSize:40.0)),
                              ),
                            ),
                            Card(
                              color: Colors.purple,
                              elevation:2,
                              // margin: EdgeInsets.all(5.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Ad 1', style: TextStyle(fontSize:40.0)),
                              ),
                            ),
                            Card(
                              color: Colors.yellow,
                              elevation:2,
                              // margin: EdgeInsets.all(5.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Ad 2', style: TextStyle(fontSize:40.0)),
                              ),
                            ),
                            Card(
                              color: Colors.purple,
                              elevation:2,
                              // margin: EdgeInsets.all(5.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Ad 1', style: TextStyle(fontSize:40.0)),
                              ),
                            ),
                            Card(
                              color: Colors.yellow,
                              elevation:2,
                              // margin: EdgeInsets.all(5.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Ad 2', style: TextStyle(fontSize:40.0)),
                              ),
                            ),
                            Card(
                              color: Colors.purple,
                              elevation:2,
                              // margin: EdgeInsets.all(5.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Ad 1', style: TextStyle(fontSize:40.0)),
                              ),
                            ),
                            Card(
                              color: Colors.yellow,
                              elevation:2,
                              // margin: EdgeInsets.all(5.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Ad 2', style: TextStyle(fontSize:40.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ),  
                    // Todo: use column for Ads
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}