import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:social_citizen_web/widgets/text.dart';
import 'package:clippy_flutter/clippy_flutter.dart';


TextStyle textStyle (double fontSize, bool bold) {

  return TextStyle(
    fontSize: fontSize,
    // fontFamily: "Raleway",
    fontWeight: bold ? FontWeight.bold: FontWeight.w500,
    color: Colors.black,
  );
}

class IntroPage extends StatefulWidget {
  
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  
  List<String> imagePaths = [
    "assets/images/13.jpeg",
    "assets/images/1.jpg",
    "assets/images/2.jpeg",
    "assets/images/4.jpeg",
    "assets/images/9.jpeg",
    "assets/images/11.jpeg",
    "assets/images/16.jpeg",
  ];
  List<String> swiperTitles = [
    "EDO STATE SOCIAL CITIZEN PLATFORM",
    "CLOSED USER GROUPS.",
    "GOVERNMENT WITHIN YOUR REACH",
    "JOBS THAT ARE RIGHT FOR YOU",
    "SMEs, GOODS & SERVICES",
    "BE CREDIBLY INFORMED.",
    "DAILY AND AFFORDABLE ADS",
  ];
  List<String> swiperSubtitles = [
    "Engage. Socialize. Connect.",
    "Interact responsibly within your communities and circles.",
    "Escalate issues in your community.",
    "Find verified jobs around you.",
    "Conduct your online business within a secure environment.",
    "Interactive and dynamic informational feeds.",
    "Relevant ads to bring you closer to the things that matter."
  ];
  int swiperIndex;
  SwiperController swiperController;

  @override
  void initState() {
    
    super.initState();    

    swiperIndex = 0;
    swiperController = SwiperController();

    Future.delayed(Duration(seconds: 12)).then((value) {
      
      swiperController.startAutoplay();
    });
  }

  @override
  Widget build (BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "images/logo_no_bg.png",
                fit: BoxFit.cover,
                height: size.height * 0.2
              ),
            ),
            backgroundColor: Colors.white,
            // backgroundColor: Theme.of(context).accentColor,
            pinned: true,
            // floating: true,
            // snap: true,
            stretch: true,
            titleSpacing: 0.0,
            // iconTheme: new IconThemeData(color: Colors.black),
            expandedHeight: size.height,// * 0.65,
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: CustomElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/signup");
                  },
                  text: "LOGIN",
                  backgroundcolor: Colors.white,
                  textcolor: Colors.black
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: CustomElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/signup");
                  },
                  text: "SIGNUP",
                  textcolor: Colors.white,
                  backgroundcolor: Theme.of(context).primaryColor,
                ),
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              // stretchModes: [StretchMode.fadeTitle],
              titlePadding: EdgeInsets.zero,
              background: Padding(
                padding: const EdgeInsets.only(top: 72),
                // child: Image.asset(
                //   "images/1.jpg",
                //   fit: BoxFit.cover
                // ),
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return new Image.asset(
                      imagePaths[index],
                      fit: BoxFit.cover,
                    );
                  },
                  // indicatorLayout: PageIndicatorLayout.COLOR,
                  autoplay: true,
                  curve: Curves.easeIn,
                  duration: 750,
                  itemCount: imagePaths.length,
                  pagination: SwiperPagination(

                  ),
                  control: SwiperControl(),
                  onIndexChanged: (int index) => setState(() => swiperIndex = index),
                ),
              ),
              title: Material(
                color: Colors.white.withOpacity(0.8),
                // borderRadius: BorderRadius.circular(24),
                // width: double.infinity,
                // padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        "images/logo_no_bg.png",
                        fit: BoxFit.cover,
                        height: size.height * 0.2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              swiperTitles[swiperIndex],
                              // "EDO STATE SOCIAL CITIZEN PLATFORM",
                              style: textStyle(24, true)
                            ),
                          ),
                          Flexible(
                            child: Material(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(32),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  swiperSubtitles[swiperIndex],
                                  // "Engage. Socialize. Connect.",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white
                                  )
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: size.height,
                child: PageView(
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  children: <Widget>[
                    // First
                    MySliverDelegate(
                      imagePath: "assets/images/2.jpeg",
                      title: "A new way of being active",
                      subtitle: "Edo State Government desires active citizens. Engage Ministries, Departments and Agencies directly for prompt services, accurate information and constructive criticisms.",
                      callToAction: "Get started.",
                    ),
                    
                    // Second.
                    MySliverDelegate(
                      imagePath: "assets/images/4.jpeg",
                      title: "Connect with verified SMEs around you.",
                      useImageOnLeftSide: false,
                      subtitle: "Edo State Government desires active citizens. Engage Ministries, Departments and Agencies directly for prompt services, accurate information and constructive criticisms.",
                      callToAction: "Get started.",
                    ),
                    
                    // Third.
                    MySliverDelegate(
                      imagePath: "assets/images/6.jpeg",
                      title: "Connect with verified SMEs around you.",
                      subtitle: "Edo State Government desires active citizens. Engage Ministries, Departments and Agencies directly for prompt services, accurate information and constructive criticisms.",
                      callToAction: "Get started.",
                      useHorizontalImagePadding: false,
                    ),
                  
                    // Fourth.
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 32, 32, 32.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    "A new way of being active",
                                    style: textStyle(28, true),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    "Engage your State government socially and responsibly.",
                                    style: textStyle(14, true),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ]
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.grey[200]
                            ),
                            width: size.width * 0.3,
                            height: size.height * 0.5,
                            child: Image.asset(
                              "images/7.jpeg",
                              fit: BoxFit.cover,                              
                            ),
                          ),
                        ],
                      ),
                    ),
                  
                  ]
                ),
              ),
              // Footer
              Container(
                // padding: EdgeInsets.only(left:40, right:40, ),
                color: Theme.of(context).primaryColor.withRed(200),//Colors.black,
                height: size.height * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        'Copyright ©2021, All Rights Reserved',
                        style: TextStyle(
                          color: Colors.white
                        )
                      ),
                    ),
                    Text('Powered by Intelytics', style:TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ])
          )
        ]
      )
    );
  }
}

class MySliverDelegate extends StatefulWidget {
  const MySliverDelegate({Key key, this.imagePath, this.useImageOnLeftSide:true, this.useHorizontalImagePadding: true, this.title, this.subtitle, this.callToAction}) : super(key: key);

  final String imagePath;
  final bool useImageOnLeftSide;
  final bool useHorizontalImagePadding;
  final String title;
  final String subtitle;
  final String callToAction;

  @override
  _MySliverDelegateState createState() => _MySliverDelegateState();
}

class _MySliverDelegateState extends State<MySliverDelegate> {
  
  Size size;
  String subtitle;

  @override
  void initState() { 
    super.initState();
        
    subtitle = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book";
  }

  Widget imageContainer () {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      width: size.width * 0.3,
      height: size.height * 0.5,
      child: Image.asset(
        widget.imagePath,
        fit: BoxFit.cover,                              
      ),
    );
  }

  Widget textContainer () {

    return Container(
      width: size.width * 0.5,
      height: size.height * 0.5,                            
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          // elevation: 2,
          child: InkWell(
            onTap: () {},
            onHover: (bool x) {

            },
            hoverColor: Theme.of(context).accentColor.withOpacity(0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInDown(
                  animate: true,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SelectableText(
                      widget.title,
                      style: textStyle(28, true),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                ElasticInLeft(
                  duration: Duration(milliseconds: 2000),
                  delay: Duration(milliseconds: 2000),
                  child: Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SelectableText(
                        widget.subtitle ?? subtitle,
                        style: TextStyle(
                          fontSize: 16
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ),
                // Call to action.
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Container(                                          
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(64.0),
                      child: MySmallText(
                        text: widget.callToAction ?? "Know your Government Agencies. Connect and engage. It's all free.",
                        bold: true,
                        color: Colors.white,
                      )
                    )
                  )
                )
              ]
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build (BuildContext context) {    

    size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 72),
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            widget.useImageOnLeftSide ? imageContainer(): textContainer(),

            widget.useImageOnLeftSide ? textContainer(): imageContainer()
          ],
        ),
      ),
    );
  }
}