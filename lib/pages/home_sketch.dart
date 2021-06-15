import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:social_citizen_web/widgets/app_bar.dart';

// import 'package:social_citizen_web/widgets/customized_tile.dart';
// import 'package:social_citizen_web/widgets/linear_progress_indicator.dart';
// import 'package:animate_do/animate_do.dart';

import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/text.dart';
import 'package:social_citizen_web/widgets/chips.dart';

class MyHomeSketchScreen extends StatefulWidget {
  MyHomeSketchScreen({Key key}) : super(key: key);

  @override
  _MyHomeSketchScreenState createState() => _MyHomeSketchScreenState();
}

class _MyHomeSketchScreenState extends State<MyHomeSketchScreen> {
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
    ..imageURL = 'assets/images/clothes.jpg'
    ..title = 'Shoes',
    MyAd()    
    ..imageURL = 'assets/images/shoes.jpg'
    ..title = 'Shoes',
    MyAd()    
    ..imageURL = 'assets/images/clothes.jpg'
    ..title = 'Shoes',
    MyAd()    
    ..imageURL = 'assets/images/shoes.jpg'
    ..title = 'Shoes',
    
    // MyAd()    
    // ..imageURL = 'assets/images/8.jpg'
    // ..title = 'Classy outfit for women',
    // MyAd()    
    // ..imageURL = 'assets/images/shoes.jpg'
    // ..title = 'Get these fine luxury wool at an affordable price'
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

  SwiperController swiperController = SwiperController();

  @override
  void initState() {
    
    super.initState();

    swiperController = SwiperController();

    Future.delayed(Duration(seconds: 12)).then((value) {
      
      swiperController.move(1);
    });
  }

  @override
  Widget build (BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double hPadding = size.width * 0.1;

    return Scaffold(
      appBar: MyAppBar.build(context),
      backgroundColor: Colors.grey[300],
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Shown when performing any async work.
          // MyLinearProgressIndicator(),

          // Search bar and other links at top.
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: hPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * 0.001),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(64),
                            bottomLeft: Radius.circular(64),
                          ),
                          color: Colors.grey[50]
                        ),
                        height: size.height * 0.08,
                        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey[50],
                                width: 1.0
                              )
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none
                            ),
                            hintText: "Obaseki Politics",
                            filled: false,
                            fillColor: Colors.grey[100],
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),                            
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: Colors.black,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.close_rounded
                              ),
                              color: Colors.black,
                              onPressed: () {},
                            )
                          )
                        ),
                      ),
                    )
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(64),
                          bottomRight: Radius.circular(64),
                        ),
                        color: Colors.white
                      ),
                      height: size.height * 0.08,
                      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Chip(
                              label: MySmallText(
                                text: "Business",
                                color: Colors.white
                              ),
                              backgroundColor: Theme.of(context).primaryColor,
                              shape: StadiumBorder(),
                            )
                          ),
                          TextButton(
                            onPressed: () {},
                            child: MySmallText(
                              text: "People",
                              bold: true
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: MySmallText(
                              text: "Govt. agencies",
                              bold: true
                            )
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // Feeds.
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: hPadding),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Feeds.
                  Expanded(
                    flex: 3,
                    child: Scrollbar(
                      child: SingleChildScrollView(
                        physics: ScrollPhysics(),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(32),
                              bottomLeft: Radius.circular(32),
                            ),
                            color: Colors.grey[50]
                          ),
                          width: size.width * 0.25,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                            elevation: 0,
                            // color: Color(0xFF19ca21).withOpacity(0.3),
                            color: Colors.grey[50],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // CUG Chips laid out horizontally.
                                // Align(
                                //   alignment: Alignment.topCenter,
                                //   child: Padding(
                                //     padding: const EdgeInsets.symmetric(vertical: 16),
                                //     child: Container(
                                //       decoration: BoxDecoration(
                                //         borderRadius: BorderRadius.all(Radius.elliptical(50, 50)),
                                //         color: Colors.white//grey[100]
                                //       ),
                                //       height: size.height * 0.1,
                                //       // width: size.width,
                                //       width: size.width * 0.5,
                                //       padding: const EdgeInsets.symmetric(vertical: 2),
                                //       child: Row(
                                //         mainAxisAlignment: MainAxisAlignment.start,
                                //         children: [
                                //           Padding(
                                //             padding: const EdgeInsets.symmetric(vertical: 4),
                                //             child: Container(
                                //               width: size.width,
                                //               child: ListView.builder(
                                //                 scrollDirection: Axis.horizontal,
                                //                 shrinkWrap: true,
                                //                 physics: ScrollPhysics(),
                                //                 padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                //                 itemCount: chips.length,
                                //                 itemBuilder: (BuildContext context, int index) {
                                        
                                //                   MyCUGChip chip = chips[index];
                                          
                                //                   Color color = Colors.black87;
                                //                   return Padding(
                                //                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                //                     child: MyChip(
                                //                       label: chip.label,
                                //                       color: color
                                //                     ),
                                //                   );
                                //                 }
                                //               )
                                //             )
                                //           ),
                                //           IconButton(
                                //             icon: Icon(Icons.chevron_right_rounded),
                                //             onPressed: () {
                                        
                                //             }
                                //           )
                                //         ]
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                // this is for the chips
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 16),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.elliptical(50, 50)),
                                        color: Colors.white//grey[100]
                                      ),
                                      height: size.height * 0.1,
                                      width: size.width * 0.5,
                                      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          // IconButton(
                                          //   icon: Icon(Icons.chevron_left_rounded),
                                          //   onPressed: () {

                                          //   }
                                          // ),
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
                                                  Color color = Colors.black87;
                                                  return Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                                    child: MyChip(
                                                      label: chip.label,
                                                      color: color
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
                                // This is for the actual feeds.
                                Padding(
                                  padding: const EdgeInsets.all(32),
                                  child: GridView.count(
                                    crossAxisCount: 2,
                                    shrinkWrap: true,
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    physics: ScrollPhysics(),
                                    children: List.generate(feeds.length, (index) {
                                      
                                      MyFeed feed = feeds[index];
                                      
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            backgroundBlendMode: BlendMode.darken,
                                            borderRadius: BorderRadius.circular(42),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                "assets/images/obaseki.jpg",   
                                              ),
                                              fit: BoxFit.cover,
                                              alignment: Alignment.center
                                            ),
                                            color: Colors.grey[300]
                                          ),
                                          child: Material(
                                            color: Colors.transparent.withOpacity(0.5),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(42),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: MyBoldText(
                                                        text: "Bolu Adams",
                                                        color: Colors.blue
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: MyBoldText(
                                                        text: "It's possible for Obaseki to return to APC...",
                                                        color: Colors.white
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Text(
                                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eget est ut lorem accumsan sodales at non metus. Suspendisse quis facilisis tellus, iaculis interdum arcu. Nullam in ex rutrum felis luctus placerat.",
                                                        maxLines: 3,
                                                        style: TextStyle(
                                                          color: Colors.white
                                                        ),
                                                        overflow: TextOverflow.ellipsis
                                                      ),
                                                    )
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                              padding: const EdgeInsets.all(4.0),
                                                              child: Row(
                                                                children: [
                                                                  Icon(
                                                                    Icons.thumb_up_rounded,
                                                                    color: Colors.indigo,
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets.all(2.0),
                                                                    child: MySmallerText(
                                                                      text: "451",
                                                                      color: Colors.white,
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
                                                                    Icons.thumb_down_alt,
                                                                    color: Colors.white,
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets.all(2.0),
                                                                    child: MySmallerText(
                                                                      text: "350",
                                                                      color: Colors.white,
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
                                                                    Icons.comment_rounded,
                                                                    color: Colors.white,
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets.all(2.0),
                                                                    child: MySmallerText(
                                                                      text: "28",
                                                                      color: Colors.white,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),

                                                    ],
                                                  ),
                                                ]
                                              ),
                                            ),
                                          )
                                        ),
                                      );
                                    })
                                  )
                                ),
                              ]
                            )
                          )
                        ),
                      ),
                    ),
                  ),                  
                  SizedBox(
                    width: size.width * 0.002,
                  ),
                  // Recommended Ads
                  Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      child: Container(
                        height: size.height,                    
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          color: Colors.grey[50]
                        ),
                        child: Column(
                          children: [
                            
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 35, 8, 0),
                              child: Text(
                                'Recommended',
                                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold ) ,
                              ),
                            ),
                            Column(
                              children: [
                                    Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: 
                                  Container(
                                    decoration: BoxDecoration(
                                      backgroundBlendMode: BlendMode.darken,
                                      borderRadius: BorderRadius.circular(42),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/obaseki.jpg",                                       
                                        ),
                                        fit: BoxFit.fill,
                                        alignment: Alignment.center
                                      ),
                                      color: Colors.grey[300]
                                    ),
                                    // color: Colors.grey[300]
                                  ),
                                ),
                                
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'NIN Registration...',
                                    style: TextStyle(color:  Colors.indigo, fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                ),
                              ]
                            ),
                            
                            
                            Padding(
                              padding: const EdgeInsets.all(32),
                              child: GridView.count(
                                crossAxisCount: 1,
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                physics: ScrollPhysics(),
                                children: List.generate(ads.length, (index) {
                                  
                                  MyAd ad = ads[index];
                                  
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),                                   
                                       child: Container(
                                          decoration: BoxDecoration(
                                            backgroundBlendMode: BlendMode.darken,
                                            borderRadius: BorderRadius.circular(42),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                // "assets/images/obaseki.jpg",  
                                                ad.imageURL,
                                              ),
                                              fit: BoxFit.fill,
                                              alignment: Alignment.center
                                            ),
                                            color: Colors.grey[300]
                                          ),
                                          child: Center(
                                            child: MyBoldText(
                                              text: ad.title,
                                              color: Colors.indigo
                                            ),
                                          )
                                          // child: Material(
                                          //   color: Colors.transparent.withOpacity(0.5),
                                          //   shape: RoundedRectangleBorder(
                                          //     borderRadius: BorderRadius.circular(42),
                                          //   ),
                                          //   child: Padding(
                                          //     padding: const EdgeInsets.all(8.0),
                                          //     child: Column(
                                          //       mainAxisAlignment: MainAxisAlignment.start,
                                          //       crossAxisAlignment: CrossAxisAlignment.start,
                                          //       children: [
                                          //         Expanded(
                                          //           child: Padding(
                                          //             padding: const EdgeInsets.all(8.0),
                                          //             child: MyBoldText(
                                          //               text: "Bolu Adams",
                                          //               color: Colors.blue
                                          //             ),
                                          //           ),
                                          //         ),
                                          //         Expanded(
                                          //           child: Padding(
                                          //             padding: const EdgeInsets.all(8.0),
                                          //             child: MyBoldText(
                                          //               text: "It's possible for Obaseki to return to APC...",
                                          //               color: Colors.white
                                          //             ),
                                          //           ),
                                          //         ),
                                          //         Flexible(
                                          //           child: Padding(
                                          //             padding: const EdgeInsets.all(8.0),
                                          //             child: Text(
                                          //               "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eget est ut lorem accumsan sodales at non metus. Suspendisse quis facilisis tellus, iaculis interdum arcu. Nullam in ex rutrum felis luctus placerat. Fusce elementum efficitur nisi, at porta erat ornare in. Praesent congue fermentum lacus, nec mattis libero mattis in. Sed velit neque, tempor ac sem at, ultricies hendrerit nisl. Proin dolor est, aliquet vel finibus a, blandit ut magna. Nullam sagittis elit in mauris efficitur, dignissim placerat nibh convallis.",
                                          //               maxLines: 5,
                                          //               style: TextStyle(
                                          //                 color: Colors.white
                                          //               ),
                                          //               overflow: TextOverflow.ellipsis
                                          //             ),
                                          //           )
                                          //         )
                                          //       ]
                                          //     ),
                                          //   ),
                                          // )
                                        ),

                                        
                                  );
                                })
                              )
                            )
                    
                          ],
                        ),
                      ),
                    ),
                    
                  ),
                  // Expanded(
                  //   flex: 1,
                  //   child: Padding(
                  //     padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  //     child: Scrollbar(
                  //       child: ListView.builder(
                  //         shrinkWrap: true,
                  //         physics: ScrollPhysics(),
                  //         itemCount: feeds.length,
                  //         itemExtent: size.height * 0.25,
                  //         itemBuilder: (BuildContext context, int index) {
                            
                  //           double cardElevation = 2;

                  //           final feed = feeds[index];
                  //           return InkWell(
                  //             onTap: () async {
                  //               // await Navigator.pushNamed(context, feed['callToAction']);
                  //             },
                  //             // hoverColor: Colors.grey,
                  //             onHover: (bool hovered) {
                  //               setState(() => hovered ? cardElevation = 4.0: cardElevation = 2.0);
                  //             },
                  //             child: Card(
                  //               margin: const EdgeInsets.all(4),
                  //               elevation: cardElevation,
                  //               // shadowColor: Colors.greenAccent,
                  //               shape: RoundedRectangleBorder(
                  //                 borderRadius: BorderRadius.circular(8)
                  //               ),
                  //               color: Colors.white,
                  //               child: Container(
                  //                 decoration: BoxDecoration(
                  //                   borderRadius: BorderRadius.circular(8),
                  //                   color: Colors.white,
                  //                 ),
                                  
                  //                 child: Column(
                  //                   crossAxisAlignment: CrossAxisAlignment.center,
                  //                   mainAxisSize: MainAxisSize.min,
                  //                   children: <Widget>[
                  //                     // Feed media, title & summaries.
                  //                     Padding(
                  //                       padding: const EdgeInsets.symmetric(horizontal: 16),
                  //                       child: Row(
                  //                         children: [
                  //                           // Media (images only for now).
                  //                           Image.asset(
                  //                             feed.imageURL,
                  //                             fit: BoxFit.cover,
                  //                             height: size.height * 0.2 * 0.5,
                  //                             width: size.width * 0.5 * 0.2,
                  //                           ),
                  //                           // Title & summaries.
                  //                           Padding(
                  //                             padding: const EdgeInsets.all(4.0),
                  //                             child: Container(
                  //                               height: size.height * 0.2 * 0.75,
                  //                               child: Column(
                  //                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //                                 children: [
                  //                                   // Feed summaries container.
                  //                                   Padding(
                  //                                     padding: const EdgeInsets.all(8.0),
                  //                                     child: Container(
                  //                                       color: Colors.grey[50],
                  //                                       child: Wrap(
                  //                                         runAlignment: WrapAlignment.spaceAround,
                  //                                         children: [
                  //                                           Padding(
                  //                                             padding: const EdgeInsets.all(4.0),
                  //                                             child: Row(
                  //                                               children: [
                  //                                                 Icon(
                  //                                                   Icons.read_more_rounded
                  //                                                 ),
                  //                                                 Padding(
                  //                                                   padding: const EdgeInsets.all(2.0),
                  //                                                   child: MySmallerText(
                  //                                                     text: "451"
                  //                                                   ),
                  //                                                 )
                  //                                               ],
                  //                                             ),
                  //                                           ),
                  //                                           Padding(
                  //                                             padding: const EdgeInsets.all(4.0),
                  //                                             child: Row(
                  //                                               children: [
                  //                                                 Icon(
                  //                                                   Icons.comment_rounded
                  //                                                 ),
                  //                                                 Padding(
                  //                                                   padding: const EdgeInsets.all(2.0),
                  //                                                   child: MySmallerText(
                  //                                                     text: "350"
                  //                                                   ),
                  //                                                 )
                  //                                               ],
                  //                                             ),
                  //                                           ),
                  //                                           Padding(
                  //                                             padding: const EdgeInsets.all(4.0),
                  //                                             child: Row(
                  //                                               children: [
                  //                                                 Icon(
                  //                                                   Icons.thumb_up_rounded
                  //                                                 ),
                  //                                                 Padding(
                  //                                                   padding: const EdgeInsets.all(2.0),
                  //                                                   child: MySmallerText(
                  //                                                     text: "28"
                  //                                                   ),
                  //                                                 )
                  //                                               ],
                  //                                             ),
                  //                                           ),
                  //                                           Padding(
                  //                                             padding: const EdgeInsets.all(4.0),
                  //                                             child: Row(
                  //                                               children: [
                  //                                                 Icon(
                  //                                                   Icons.thumb_down_rounded
                  //                                                 ),
                  //                                                 Padding(
                  //                                                   padding: const EdgeInsets.all(2.0),
                  //                                                   child: MySmallerText(
                  //                                                     text: "12"
                  //                                                   ),
                  //                                                 )
                  //                                               ],
                  //                                             ),
                  //                                           )
                  //                                         ],
                  //                                       ),
                  //                                     ),
                  //                                   ),

                  //                                   // Title of Feed.
                  //                                   Expanded(
                  //                                     child: Padding(
                  //                                       padding: const EdgeInsets.all(4.0),
                  //                                       child: MyTitleText(
                  //                                         text: feed.title.toUpperCase(),
                  //                                       ),
                  //                                     ),
                  //                                   )
                  //                                 ]
                  //                               ),
                  //                             ),
                  //                           ),
                  //                           // Time.
                  //                           Flexible(
                  //                             child: Padding(
                  //                               padding: const EdgeInsets.all(4.0),
                  //                               child: Container(
                  //                                 color: Colors.grey[50],
                  //                                 child: Padding(
                  //                                   padding: const EdgeInsets.all(4.0),
                  //                                   child: MySmallerText(
                  //                                     text: "31-May-2021\n11:51 AM"
                  //                                   ),
                  //                                 ),
                  //                               )
                  //                             ),
                  //                           )
                  //                         ]
                  //                       ),
                  //                     ),

                  //                     // Divider
                  //                     Padding(
                  //                       padding: const EdgeInsets.fromLTRB(16, 0, 64, 0),
                  //                       child: Divider(
                  //                         thickness: 1
                  //                       )
                  //                     ),
                                      
                  //                     // Feeds subtitle
                  //                     Flexible(
                  //                       child: Padding(
                  //                         padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                  //                         child: Row(
                  //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //                           crossAxisAlignment: CrossAxisAlignment.end,
                  //                           children: [
                  //                             Flexible(
                  //                               flex: 9,
                  //                               child: Text(
                  //                                 feed.subtitle,
                  //                                 style:  TextStyle(
                  //                                   fontSize: 12,
                  //                                 ),
                  //                                 textAlign: TextAlign.justify,
                  //                                 overflow: TextOverflow.fade,
                  //                               ),
                  //                             ),
                  //                             Expanded(
                  //                               child: Padding(
                  //                                 padding: const EdgeInsets.symmetric(horizontal: 2),
                  //                                 child: TextButton(
                  //                                   style: ButtonStyle(
                  //                                     backgroundColor: MaterialStateProperty.all(Colors.white)
                  //                                   ),
                  //                                   child: Padding(
                  //                                     padding: const EdgeInsets.all(4),
                  //                                     child: MySmallerText(
                  //                                       text: "Read more",
                  //                                       color: Colors.blue
                  //                                     ),
                  //                                   ),
                  //                                   onPressed: () {}
                  //                                 )
                  //                               ),
                  //                             )
                  //                           ],
                  //                         )
                  //                       )
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //           );
                  //         },
                  //       ),
                  //     ),
                  //   ),
                  // ),                                    
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