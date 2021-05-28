import 'package:flutter/material.dart';
import 'package:social_citizen_web/pages/CUG_group.dart';
import 'package:social_citizen_web/pages/job_search.dart';
import 'package:social_citizen_web/widgets/chips.dart';
import 'package:social_citizen_web/widgets/customized_tile.dart';
import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/links.dart';
import 'package:social_citizen_web/widgets/text.dart';
import 'package:animate_do/animate_do.dart';
import 'package:animations/animations.dart';

class MyHomeScreen extends StatefulWidget {
  MyHomeScreen({Key key}) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  List<String> tileCaptions = ["Marketplaces", "Jobs", "Connect", "Escalate"];
  List<String> images = [
    'assets/images/market.jpg',
    'assets/images/jobs.jpg',
    'assets/images/jobs again.jpg',
    'assets/images/escalate.jpg'
  ];

  final List<Map<String, dynamic>> building = [
    {
      'title': 'How to register for NIN',
      'callToAction': '/postdetails',
      'image': 'assets/images/explanation.jpg'
    },
    {
      'title': 'Job opportunities',
      'callToAction': '/postdetails',
      'image': 'assets/images/jobs again.jpg'
    },
    {
      'title': 'NAFDAC Recruitment',
      'callToAction': '/postdetails',
      'image': 'assets/images/jobs.jpg'
    },
    {
      'title': 'NCDC warns against human cluster',
      'callToAction': '/postdetails',
      'image': 'assets/images/market.jpg'
    },
  ];

  final List<Map<String, dynamic>> ads = [
    {
      'title': 'Classy clothes for any ocassion',
      'callToAction': '/postdetails',
      'image': 'assets/images/clothes.jpg'
    },
    {
      'title': 'Get this for a perfect skin',
      'callToAction': '/postdetails',
      'image': 'assets/images/shoes.jpg'
    },
    {
      'title': 'Classy Louis Vuiton shoes',
      'callToAction': '/postdetails',
      'image': 'assets/images/clothes.jpg'
    },
    {
      'title': 'Get these fine luxury wool at an affordable price',
      'callToAction': '/postdetails',
      'image': 'assets/images/shoes.jpg'
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
        // actionsIconTheme: gActionIconsTheme,
        // backgroundColor: Colors.white
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: FadeIn(
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                  // Todo: Your CUG chips here,
                  child: chipList()),
            ),
          ),
          Flexible(
            child: FadeInUp(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      // decoration: BoxDecoration(
                      //   // color: Colors.grey[200],
                      //   borderRadius: BorderRadius.circular(20.0),
                      // ),
                      // color: Colors.purple,
                      child: GridView.count(
                        // shrinkWrap: true,
                        // scrollDirection: Axis.vertical,
                        mainAxisSpacing: 0.0,
                        // gMQ.height * 0.003,
                        crossAxisCount: 1,
                        children: List.generate(tileCaptions.length, (index) {
                          String caption = tileCaptions[index];
                          String image = images[index];

                          return Card(
                            elevation: 2,
                            child: Material(
                              shape:  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              // color: Colors.black,
                              child: InkResponse(
                                borderRadius: BorderRadius.circular(32),
                                splashColor: Colors.grey,
                                radius: size.width * 100,
                                onTap: () async {
                                  await Navigator.of(context).push(
                                      MaterialPageRoute<void>(
                                          builder: (BuildContext context) {
                                    return OpenContainer(
                                      transitionType:
                                          ContainerTransitionType.fade,
                                      openBuilder: (BuildContext context,
                                          VoidCallback _) {
                                        return Container();
                                      },
                                      closedElevation: 6.0,
                                      // closedShape: const RoundedRectangleBorder(
                                      //   borderRadius: BorderRadius.all(
                                      //     Radius.circular(50),
                                      //   ),
                                      // ),
                                      closedColor: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      closedBuilder: (BuildContext context,
                                          VoidCallback openContainer) {
                                        var route;
                                        // String routeName;
                                        // "Marketplaces", "Jobs", "Connect", "Escalate"
                                        switch (caption) {
                                          case "Marketplaces":
                                            route = JobSearchPage(
                                            //   iconText: '',
                                            //  icon: Icons.fiber_manual_record,
                                              title: 'SME\'s World',
                                              text: 'Search businesses',
                                              text1: 'Business Name',
                                              text2: 'Services of Business',
                                              text3: 'Location',
                                              text4: 'Contact',
                                              caption: '',
                                            );
                                            // routeName = MyPageStateNames.angel_home.toString();
                                            break;
                                          case "Jobs":
                                            route = JobSearchPage(
                                            //   iconText: '',
                                            //  icon: Icons.fiber_manual_record,
                                              title: 'Job Opportunities',
                                              text: 'Search jobs',
                                              text1: 'Job Description',
                                              text2: 'Job Requirement',
                                              text3: 'Job Prerequisite',
                                              text4: 'How to Apply',
                                              caption: 'Apply',
                                            );
                                            // routeName = MyPageStateNames.draax_home.toString();
                                            break;
                                          case "Connect":
                                            route = JobSearchPage(
                                            //  iconText: 'Sort By nearest to me',
                                            //  icon: Icons.filter_list,
                                              title: 'Government Agencies',
                                              text: 'Search government agencies',
                                              text1: 'Name of Agency',
                                              text2: 'Services',
                                              text3: 'Address',
                                              text4: 'Contact',
                                              caption: '',
                                            );
                                            // routeName = MyPageStateNames.school_home.toString();
                                            break;
                                          case "Escalate":
                                          default:
                                            route = CUGGroupPage(
                                              title: 'Escalation',
                                              escalation: 'Add an Escalation',
                                            );
                                          // routeName = MyPageStateNames.home.toString();
                                        }
                                        return SizedBox(
                                          // height: 50,
                                          // width: 30,
                                          child: route,
                                        );
                                      },
                                    );
                                  }));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  // color: Colors.black,
                                  // height: size.height * 0.3,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 3.0),
                                        child: Image.asset(
                                          image,
                                          // 'assets/images/market.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                        // , width: size.width * 0.15,),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.02,
                                      ),
                                      MyTitleText(
                                        text: caption,
                                        color: Theme.of(context).accentColor,
                                        // bold: true,
                                        alignment: TextAlign.center,
                                      ),
                                      Flexible(
                                        child: Center(
                                            child: MySmallerText(
                                          text:
                                              "Click here to see what's available for you",
                                          bold: true,
                                          alignment: TextAlign.center,
                                          color: Theme.of(context).accentColor,
                                        )),
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
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      // color: Colors.amber,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.8),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: GridView.builder(
                          shrinkWrap: true,
                          // physics: ScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                          itemCount: building.length,
                          itemBuilder: (BuildContext context, int index) {
                            final currentItem = building[index];
                            return GestureDetector(
                              onTap: () {
                                // Navigator.pushNamed(
                                //         context, currentItem['callToAction'])
                                //     .toString();
                              },
                              child: Card(
                                // color: Colors.blue,
                                elevation: 2.0,
                                child: Container(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(currentItem['image'],
                                          fit: BoxFit.fill),
                                      SizedBox(
                                        height: size.height * 0.02,
                                      ),
                                      MyTitleText(
                                        text: currentItem['title'],
                                        color: Theme.of(context).accentColor,
                                      ),
                                      // Text(
                                      //   currentItem['suBTitle'],
                                      //   // style:  TextStyle(fontWeight: FontWeight.bold),
                                      //   textAlign: TextAlign.center,
                                      // ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: GridView.builder(
                        shrinkWrap: true,
                        // physics: ScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1),
                        itemCount: ads.length,
                        itemBuilder: (BuildContext context, int index) {
                          final currentItem = ads[index];
                          return GestureDetector(
                            onTap: () {
                              // Navigator.pushNamed(
                              //         context, currentItem['callToAction'])
                              //     .toString();
                            },
                            child: Card(
                              // color: Colors.blue,
                              elevation: 2.0,
                              child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                                // color: Colors.blue,
                                padding: EdgeInsets.only(top: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset(currentItem['image'],
                                        fit: BoxFit.fill),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    MyTitleText(
                                      text: currentItem['title'],
                                      color: Theme.of(context).accentColor,
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
            ),
          )
        ],
      ),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: Image.asset(
              'assets/images/market.jpg',
              fit: BoxFit.fill,
            ),
            // , width: size.width * 0.15,),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          MyTitleText(
            text: 'views',
            color: Theme.of(context).accentColor,
            // bold: true,
            alignment: TextAlign.center,
          ),
          Flexible(
            child: Center(
                child: MySmallerText(
              text: "Click here to see what's available for you",
              bold: true,
              alignment: TextAlign.center,
              color: Theme.of(context).accentColor,
            )),
          )
        ],
      ),
    );
  }
}
