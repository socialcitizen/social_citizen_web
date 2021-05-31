import 'package:flutter/material.dart';
import 'package:social_citizen_web/pages/CUG_group.dart';
import 'package:social_citizen_web/pages/job_search.dart';
import 'package:social_citizen_web/widgets/chips.dart';
import 'package:social_citizen_web/widgets/customized_tile.dart';
import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/text.dart';
import 'package:animate_do/animate_do.dart';
import 'package:animations/animations.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:social_citizen_web/widgets/appbar.dart';

class MyHomeScreen extends StatefulWidget {
  MyHomeScreen({Key key}) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  List<String> tileCaptions = ["SMEs", "Jobs", "Connect", "Escalate"];
  List<String> images = [
    'assets/images/market.jpg',
    'assets/images/jobs.jpg',
    'assets/images/jobs again.jpg',
    'assets/images/escalate.jpg'
  ];

  final List<MyFeed> feeds = [
    MyFeed()
    ..title = "How to register for NIN"
    ..imageURL = "assets/images/explanation.jpg",
    
    MyFeed()
    ..title = 'Job opportunities'
    ..imageURL = 'assets/images/jobs again.jpg',
    
    MyFeed()
    ..title = 'NAFDAC Recruitment'
    ..imageURL = 'assets/images/jobs.jpg',

    MyFeed()
    ..title = 'NCDC warns against human cluster'
    ..imageURL = 'assets/images/market.jpg',
  ];

  final List<MyAd> ads = [
    MyAd()
    ..title = 'Classy clothes for all occasions'
    ..imageURL = 'assets/images/clothes.jpg',
    MyAd()
    ..title = 'Get this for a perfect skin'
    ..imageURL = 'assets/images/shoes.jpg',
    MyAd()
    ..title = 'Classy Louis Vuiton shoes'
    ..imageURL = 'assets/images/clothes.jpg',
    MyAd()
    ..title = 'Get these fine luxury wool at an affordable price'
    ..imageURL = 'assets/images/shoes.jpg'
  ];

  List<MyCUGChip> chips = [
    MyCUGChip()
    ..label = "Men"
    ..color = Color(0xFFff6666),

    MyCUGChip()
    ..label =  "Oredo"
    ..color = Color(0xFF007f5c),

    MyCUGChip()
    ..label = "Developer"
    ..color = Color(0xFF5f65d3),

    MyCUGChip()
    ..label = "Single"
    ..color = Color(0xFF19ca21),

    MyCUGChip()
    ..label = "Doctor"
    ..color = Color(0xFF007f5c),

    MyCUGChip()
    ..label = "Married"
    ..color = Color(0xFF60230b),
    
    MyCUGChip()
    ..label = "Female"
    ..color = Color(0xFF5f65d3),

    MyCUGChip()
    ..label = "Cook"
    ..color = Color(0xFFff6666)
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build (BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: MyAppBar.build(context),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Column(
        children: [
          // CUG Chips laid out horizontally.
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(50, 50)),
                  color: Colors.grey[100]
                ),
                height: size.height * 0.1,
                width: size.width * 0.5,
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.chevron_left_rounded),
                      onPressed: () {

                      }
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      child: Container(
                        width: size.width * 0.35,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          // padding: const EdgeInsets.symmetric(horizontal: 8),
                          itemCount: chips.length,
                          itemBuilder: (BuildContext context, int index) {

                            MyCUGChip chip = chips[index];

                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: MyChip(
                                label: chip.label,
                                color: chip.color
                              ),
                            );
                          }
                        )
                      )
                    ),
                    IconButton(
                      icon: Icon(Icons.chevron_right_rounded),
                      onPressed: () {

                      }
                    )
                  ]
                ),
              ),
            ),
          ),
          
          // Divider 
          // Divider(
          //   thickness: 1
          // ),

          // Service tiles, feeds & ads.
          Flexible(
                child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  // Service Tiles.
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white
                    ),
                    width: size.width * 0.25,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          physics: ScrollPhysics(),
                          itemCount: tileCaptions.length,
                          itemBuilder: (BuildContext context, int index) {
                            String caption = tileCaptions[index];
                            String image = images[index];
                            bool isEven = index % 2 == 0;
                            BorderRadiusGeometry containerBorderRadius = isEven ? BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16)
                            ): BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16)
                            );

                            return Card(
                              color: Colors.white,
                              // margin: const EdgeInsets.all(4.0),
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: containerBorderRadius,
                              ),
                              child: Material(
                                borderRadius: containerBorderRadius,
                                child: InkResponse(
                                  borderRadius: containerBorderRadius,
                                  splashColor: Colors.green,
                                  radius: size.width * 0.3,
                                  onTap: () async {
                                    await Navigator.of(context).push(
                                      MaterialPageRoute<void>(
                                        builder: (BuildContext context) {
                                          var route;
                                          switch (caption) {
                                            case "Marketplaces":
                                              route = JobSearchPage(
                                              //   iconText: '',
                                              //  icon: Icons.fiber_manual_record,
                                                // title: 'SME\'s World',
                                                // text: 'Search businesses',
                                                // text1: 'Business Name',
                                                // text2: 'Services of Business',
                                                // text3: 'Location',
                                                // text4: 'Contact',
                                                // caption: '',
                                              );
                                              // routeName = MyPageStateNames.angel_home.toString();
                                            break;
                                            case "Jobs":
                                              route = JobSearchPage(
                                              //   iconText: '',
                                              //  icon: Icons.fiber_manual_record,
                                                // title: 'Job Opportunities',
                                                // text: 'Search jobs',
                                                // text1: 'Job Description',
                                                // text2: 'Job Requirement',
                                                // text3: 'Job Prerequisite',
                                                // text4: 'How to Apply',
                                                // caption: 'Apply',
                                              );
                                              // routeName = MyPageStateNames.draax_home.toString();
                                              break;
                                            case "Connect":
                                              route = JobSearchPage(
                                              //  iconText: 'Sort By nearest to me',
                                              //  icon: Icons.filter_list,
                                                // title: 'Government Agencies',
                                                // text: 'Search government agencies',
                                                // text1: 'Name of Agency',
                                                // text2: 'Services',
                                                // text3: 'Address',
                                                // text4: 'Contact',
                                                // caption: '',
                                              );
                                              // routeName = MyPageStateNames.school_home.toString();
                                              break;
                                            case "Escalate":
                                            default:
                                              route = CUGGroupPage(
                                                // title: 'Escalation',
                                                // escalation: 'Add an Escalation',
                                              );
                                            // routeName = MyPageStateNames.home.toString();
                                          }
                                          return SizedBox(
                                            // height: 50,
                                            // width: 30,
                                            child: route,
                                          );
                                        },
                                      )
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: containerBorderRadius,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          image
                                        ),
                                        alignment: isEven ? Alignment.centerRight:  Alignment.centerLeft
                                      ),
                                      color: Colors.white
                                    ),
                                    height: size.height * 0.15,
                                    padding: EdgeInsets.zero,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: isEven ? Alignment.centerLeft: Alignment.centerRight,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: MySmallText(
                                              text: caption,
                                              color: Theme.of(context).accentColor,
                                              bold: true,
                                              alignment: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                        
                                        // Row(
                                        //   children: [
                                        //     Flexible(
                                        //       child: Align(
                                        //         alignment: isEven ? Alignment.centerLeft: Alignment.centerRight,
                                        //         child: MySmallerText(
                                        //           text: "Click here to see what's available for you",
                                        //           alignment: TextAlign.left,
                                        //         )
                                        //       )
                                        //     )
                                        //   ]
                                        // )
                                      ],
                                    ),
                                  )
                                )
                              ),
                            );
                          }                          
                        )
                      )
                    )
                  ),
                  
                  
                  // Feeds
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Scrollbar(
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: feeds.length,
                          itemExtent: size.height * 0.25,
                          itemBuilder: (BuildContext context, int index) {
                            
                            final feed = feeds[index];
                            return InkWell(
                              onTap: () async {
                                // await Navigator.pushNamed(context, feed['callToAction']);
                              },
                              child: Card(
                                margin: const EdgeInsets.all(2),
                                elevation: 4.0,
                                // shadowColor: Colors.greenAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    // Feed media, title & summaries.
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 16),
                                      child: Row(
                                        children: [
                                          // Media (images only for now).
                                          Image.asset(
                                            feed.imageURL,
                                            fit: BoxFit.cover,
                                            height: size.height * 0.2 * 0.5,
                                            width: size.width * 0.5 * 0.2,
                                          ),
                                          // Title & summaries.
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Container(
                                              height: size.height * 0.2 * 0.75,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  // Feed summaries container.
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Container(
                                                      color: Colors.grey[50],
                                                      child: Wrap(
                                                        runAlignment: WrapAlignment.spaceAround,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.all(4.0),
                                                            child: Row(
                                                              children: [
                                                                Icon(
                                                                  Icons.remove_red_eye_rounded
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets.all(4.0),
                                                                  child: MySmallerText(
                                                                    text: "800"
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.all(4.0),
                                                            child: Row(
                                                              children: [
                                                                Icon(
                                                                  Icons.read_more_rounded
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets.all(2.0),
                                                                  child: MySmallerText(
                                                                    text: "451"
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.all(4.0),
                                                            child: Row(
                                                              children: [
                                                                Icon(
                                                                  Icons.comment_rounded
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets.all(2.0),
                                                                  child: MySmallerText(
                                                                    text: "350"
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.all(4.0),
                                                            child: Row(
                                                              children: [
                                                                Icon(
                                                                  Icons.thumb_up_rounded
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets.all(2.0),
                                                                  child: MySmallerText(
                                                                    text: "28"
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.all(4.0),
                                                            child: Row(
                                                              children: [
                                                                Icon(
                                                                  Icons.thumb_down_rounded
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets.all(2.0),
                                                                  child: MySmallerText(
                                                                    text: "12"
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),

                                                  // Title of Feed.
                                                  Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(4.0),
                                                      child: MyTitleText(
                                                        text: feed.title.toUpperCase(),
                                                      ),
                                                    ),
                                                  )
                                                ]
                                              ),
                                            ),
                                          ),
                                          // Time.
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Container(
                                                color: Colors.grey[50],
                                                child: Padding(
                                                  padding: const EdgeInsets.all(4.0),
                                                  child: MySmallerText(
                                                    text: "31-May-2021\n11:51 AM"
                                                  ),
                                                ),
                                              )
                                            ),
                                          )
                                        ]
                                      ),
                                    ),

                                    // Divider
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(16, 0, 64, 0),
                                      child: Divider(
                                        thickness: 1
                                      )
                                    ),
                                    
                                    // Feeds subtitle
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Flexible(
                                              flex: 9,
                                              child: Text(
                                                feed.subtitle,
                                                style:  TextStyle(
                                                  fontSize: 12,
                                                ),
                                                textAlign: TextAlign.justify,
                                                overflow: TextOverflow.fade,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 2),
                                              child: TextButton(
                                                style: ButtonStyle(
                                                  backgroundColor: MaterialStateProperty.all(Colors.white)
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(4),
                                                  child: MySmallerText(
                                                    text: "Read more",
                                                    color: Colors.blue
                                                  ),
                                                ),
                                                onPressed: () {}
                                              )
                                            )
                                          ],
                                        )
                                      )
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ),
                  ),
                  
                  // Ads
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Swiper(
                        itemCount: ads.length,
                        // indicatorLayout: PageIndicatorLayout.COLOR,
                        autoplay: true,
                        curve: Curves.easeIn,
                        duration: 5000,
                        scrollDirection: Axis.vertical,
                        // pagination: SwiperPagination(),
                        // control: SwiperControl(),
                        // onIndexChanged: (int index) => setState(() => swiperIndex = index),
                        itemBuilder: (BuildContext context, int index) {
                          final ad = ads[index];
                          return Card(
                            elevation: 2.0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[50],
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: EdgeInsets.only(top: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    ad.imageURL,
                                    fit: BoxFit.fill
                                  ),
                                  MySmallText(
                                    text: ad.title
                                  ),                           
                                ],
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

class MyFeed {
  MyFeed();

  String title;
  String subtitle = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eget est ut lorem accumsan sodales at non metus. Suspendisse quis facilisis tellus, iaculis interdum arcu. Nullam in ex rutrum felis luctus placerat. Fusce elementum efficitur nisi, at porta erat ornare in. Praesent congue fermentum lacus, nec mattis libero mattis in. Sed velit neque, tempor ac sem at, ultricies hendrerit nisl. Proin dolor est, aliquet vel finibus a, blandit ut magna. Nullam sagittis elit in mauris efficitur, dignissim placerat nibh convallis.";
  String imageURL;
}

class MyAd {
  MyAd();

  String title;
  String imageURL;
}

class MyCUGChip {
  MyCUGChip();

  String label;
  Color color;
}