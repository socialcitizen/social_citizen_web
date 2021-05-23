class MyHomeScreen extends StatefulWidget {
  MyHomeScreen({Key key}) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  
  List<String> tileCaptions = ["Marketplaces", "Jobs", "Connect", "Escalate"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build (BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MySmallerText(
              text: "Link 1"
            ),
            MySmallerText(
              text: "Link 2"
            ),
            MySmallerText(
              text: "Link 3"
            ),
          ],
        ),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        // actionsIconTheme: gActionIconsTheme,
        // backgroundColor: Colors.white
      ),
      // Todo: Add your drawer below.
      // drawer: Theme(
      //   isMaterialAppTheme: true,
      //   data: ThemeData(
      //     canvasColor: Colors.white//gCanvasColor,
      //   ),
      //   child: MyDrawer(
      //     fromLandingScreen: true,
      //   )
      // ),
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(          
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: FadeIn(
                child: Container(              
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    border: Border.all(
                      color: Colors.black
                    ),
                    color: Colors.black,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                    // Todo: Your CUG chips here,
                    child: Placeholder(
                      color: Colors.black
                    ),
                  ),
                ),
              ),
            ),

            // Feeds, Tiles & Ads.
            Align(
              alignment: Alignment.bottomCenter,
              child: FadeInUp(
                child: Row(
                  children: [
                    // Todo: use column for Feeds

                    // Tiles.
                    GridView.count(
                      shrinkWrap: true,
                      // scrollDirection: Axis.vertical,
                      mainAxisSpacing: gMQ.size.height * 0.3 / 8,
                      crossAxisCount: 2,                  
                      children: List.generate(tileCaptions.length, (index) {

                        String caption = tileCaptions[index];
                        
                        return Stack(
                          children: [
                            SizedBox(
                              height: gMQ.size.height * 0.3,
                              width: gMQ.size.width * 0.5,
                              child: Card(
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
                                    radius: gMQ.size.width * 100,                            
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
                                              String routeName;
                                              
                                              switch (service.ServiceId) {
                                                case gTrippAngel:
                                                  route = MyAngelHomeScreen();
                                                  routeName = MyPageStateNames.angel_home.toString();
                                                  break;
                                                case gTrippDraax:
                                                  route = MyDraaxHomeScreen();
                                                  routeName = MyPageStateNames.draax_home.toString();
                                                  break;
                                                case gTrippSchool:
                                                  route = MySchoolHomeScreen();
                                                  routeName = MyPageStateNames.school_home.toString();
                                                  break;
                                                case gTrippSocial:
                                                default:
                                                  route = MySocialHomeScreen();
                                                  routeName = MyPageStateNames.home.toString();
                                              }
                                              return SizedBox(
                                                // height: 50,
                                                // width: 30,
                                                child: route,
                                              );
                                            },
                                          );
                                        }
                                      ));
                                    },
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset(
                                            // Todo: service.LogoURL,
                                            fit: BoxFit.fitWidth,
                                            width: gMQ.size.width * 0.2,
                                            height: gMQ.size.height * 0.075,
                                          ),
                                        ),

                                        MySmallText(
                                          text: caption,                                  
                                          color: Colors.black,
                                          bold: true,
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
                                              // color: MyAppBloc.parseColor(service.AppBarColor),
                                            ),
                                            width: gMQ.size.width,
                                            height: gMQ.size.height * 0.15,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Center(
                                                child: MySmallerText(
                                                  text: "PunchLine",
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
                            )                        
                          ]
                        );
                      }),
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