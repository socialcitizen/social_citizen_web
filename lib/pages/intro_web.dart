import 'package:animate_do/animate_do.dart';
// import 'package:avatar_glow/avatar_glow.dart';
import 'package:morphable_shape/morphable_shape.dart';
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

class _IntroPageState extends State<IntroPage> with SingleTickerProviderStateMixin {
  
  Animatable<Color> background;

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
  List<MySliverDelegate> mySliverDelegates = [
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
      useHorizontalImagePadding: true,
    ),
      
    // Fourth.
    MySliverDelegate(
      imagePath: "assets/images/7.jpeg",
      title: "Engage your State government socially and responsibly.",
      subtitle: "Edo State Government desires active citizens. Engage Ministries, Departments and Agencies directly for prompt services, accurate information and constructive criticisms.",
      callToAction: "Get started.",
      useHorizontalImagePadding: false,
      useImageOnLeftSide: false,
    )
  ];
  int swiperIndex;
  SwiperController swiperController;
  AnimationController controller;

  @override
  void initState() {
    
    super.initState();    

    swiperIndex = 0;
    swiperController = SwiperController();

    Future.delayed(Duration(seconds: 12)).then((value) {
      
      swiperController.startAutoplay();
    });

    controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build (BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    background = TweenSequence<Color>(
      [
        TweenSequenceItem(
          weight: 1.0,
          tween: ColorTween(
            begin: Theme.of(context).primaryColor,
            end: Theme.of(context).accentColor,
          ),
        ),
        TweenSequenceItem(
          weight: 1.0,
          tween: ColorTween(
            // begin: Theme.of(context).accentColor,
            begin: Theme.of(context).primaryColor,
            end: Colors.blue,
          ),
        ),
        TweenSequenceItem(
          weight: 1.0,
          tween: ColorTween(
            // begin: Colors.blue,
            begin: Theme.of(context).primaryColor,
            end: Colors.pink,
          ),
        ),
        TweenSequenceItem(
          weight: 1.0,
          tween: ColorTween(
            // begin: Colors.black,
            begin: Theme.of(context).primaryColor,
            end: Colors.black,
          ),
        ),
        TweenSequenceItem(
          weight: 1.0,
          tween: ColorTween(
            // begin: Colors.black,
            begin: Theme.of(context).primaryColor,
            end: Colors.white,
          ),
        ),
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size.height * 0.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/logo_no_bg.png"
                    ),
                  )
                )
              )
                // child: Image.asset(
                //   "images/logo_no_bg.png",
                //   fit: BoxFit.cover,
                //   height: size.height * 0.2
                // ),
              // ),
            ),
            // backgroundColor: Colors.green,
            // backgroundColor: Theme.of(context).primaryColor.withOpacity(0.5),
            backgroundColor: background.evaluate(AlwaysStoppedAnimation(controller.value)),
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
                padding: const EdgeInsets.fromLTRB(72, 96, 72, 96),
                // child: Image.asset(
                //   "images/1.jpg",
                //   fit: BoxFit.cover
                // ),
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {

                    Widget child = Image.asset(
                      imagePaths[index],
                      fit: BoxFit.cover,
                    );
                    
                    return index % 2 > 0 ? FadeInDownBig(
                      child: child
                    ): FadeInUpBig(
                      child: child
                    );
                  },
                  // indicatorLayout: PageIndicatorLayout.COLOR,
                  autoplay: true,
                  curve: Curves.easeIn,
                  duration: 750,
                  itemCount: imagePaths.length,
                  pagination: SwiperPagination(),
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
                      child: ZoomIn(
                        child: Image.asset(
                          "assets/images/logo_no_bg.png",
                          fit: BoxFit.cover,
                          height: size.height * 0.2,
                        ),
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
                            child: ZoomIn(
                              key: GlobalKey(),
                              child: Text(
                                swiperTitles[swiperIndex],
                                // "EDO STATE SOCIAL CITIZEN PLATFORM",
                                style: textStyle(24, true)
                              ),
                            ),
                          ),
                          Flexible(
                            child: Material(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(32),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: ElasticInLeft(
                                  key: GlobalKey(),
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // bottom: AppBar(
            //   title: Container(
            //     height: 50,
            //     color: Colors.black
            //   )
            // )
          ),
        
          // SliverFixedExtentList(
          SliverList(
            // itemExtent: size.height * 0.7,
            delegate: SliverChildListDelegate([
              // First
              MySliverDelegate(
                imagePath: "assets/images/2.jpeg",
                title: "A new way of being active",
                subtitle: "Edo State Government desires active citizens. Engage Ministries, Departments and Agencies directly for prompt services, accurate information and constructive criticisms.",
                callToAction: "Become Active Today.",
                background: background,
                controller: controller,
              ),
              
              // Second.
              MySliverDelegate(
                imagePath: "assets/images/4.jpeg",
                title: "Connect with verified SMEs around you.",
                useImageOnLeftSide: false,
                subtitle: "Edo State Government desires active citizens. Engage Ministries, Departments and Agencies directly for prompt services, accurate information and constructive criticisms.",
                callToAction: "Connect Right Away.",
                background: background,
                controller: controller,
              ),
                
              // Third.
              MySliverDelegate(
                imagePath: "assets/images/6.jpeg",
                title: "Find verified jobs that match your skills.",
                subtitle: "Edo State Government desires active citizens. Engage Ministries, Departments and Agencies directly for prompt services, accurate information and constructive criticisms.",
                callToAction: "Start Searching.",
                useHorizontalImagePadding: true,
                background: background,
                controller: controller,
              ),
            
              // Fourth.
              MySliverDelegate(
                imagePath: "assets/images/7.jpeg",
                title: "Do Tier 1 Banking on the fly.",
                subtitle: "When you signup, you get a Tier 1 bank account instantly from our partner banks.",
                callToAction: "Start Banking.",
                useImageOnLeftSide: false,
                useHorizontalImagePadding: true,
                background: background,
                controller: controller,
              ),
              
              // Footer
              Container(
                // padding: EdgeInsets.only(left:40, right:40, ),
                // color: Theme.of(context).primaryColor.withRed(200),
                color: Colors.black,
                height: size.height * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(32),
                      child: Row(
                        children: [
                          Expanded(
                                                      child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MySmallText(
                                    text: "About",
                                    color: Colors.white,
                                    alignment: TextAlign.left,
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MySmallText(
                                    text: "FAQ",
                                    color: Colors.white,
                                    alignment: TextAlign.left
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MySmallText(
                                    text: "Feedback",
                                    color: Colors.white,
                                    alignment: TextAlign.left
                                  ),
                                )
                              ]
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MySmallText(
                                    text: "Edo State Ministry of Finance",
                                    color: Colors.white,
                                    alignment: TextAlign.left
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MySmallText(
                                    text: "Edo State Internal Revenue Service",
                                    color: Colors.white,
                                    alignment: TextAlign.left
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MySmallText(
                                    text: "Edo State Ministry of Information",
                                    color: Colors.white,
                                    alignment: TextAlign.left
                                  ),
                                )
                              ]
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MySmallText(
                                    text: "Office of the Governor",
                                    color: Colors.white,
                                    alignment: TextAlign.left
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MySmallText(
                                    text: "Office of the Auditor General",
                                    color: Colors.white,
                                    alignment: TextAlign.left
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MySmallText(
                                    text: "SMEs",
                                    color: Colors.white,
                                    alignment: TextAlign.left
                                  ),
                                )
                              ]
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MySmallText(
                                    text: "Report Abuse",
                                    color: Colors.white,
                                    alignment: TextAlign.left
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MySmallText(
                                    text: "Privacy Policy",
                                    color: Colors.white,
                                    alignment: TextAlign.left
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MySmallText(
                                    text: "Terms of Use",
                                    color: Colors.white,
                                    alignment: TextAlign.left
                                  ),
                                )
                              ]
                            ),
                          )
                        ]
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16),
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
  const MySliverDelegate({Key key, this.imagePath, this.useImageOnLeftSide:true, this.useHorizontalImagePadding: true, this.title, this.subtitle, this.callToAction, this.background, this.controller}) : super(key: key);

  final String imagePath;
  final bool useImageOnLeftSide;
  final bool useHorizontalImagePadding;
  final String title;
  final String subtitle;
  final String callToAction;
  final Animatable<Color> background;
  final AnimationController controller;

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
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(
          image: AssetImage(
            widget.imagePath,
          ),
          fit: BoxFit.cover
        )
      ),
      width: size.width * 0.3,
      height: size.height * 0.5
    );
  }

  Widget textContainer () {

    List<Color> topColors = widget.useImageOnLeftSide ? [Colors.white, Colors.black]: [Colors.black, Colors.white];
    List<Color> bottomColors = widget.useImageOnLeftSide ? [Colors.white, Colors.red, Colors.brown, Colors.green, Colors.grey]: [Colors.grey, Colors.green, Colors.brown, Colors.red, Colors.white];

    RectangleBorderSides borders = RectangleBorderSides.only(
      top: DynamicBorderSide(
        width: 3,
        gradient: LinearGradient(
          // colors: [Colors.brown, Colors.red, Colors.grey, Colors.green, Colors.white],
          colors: topColors
        ),
      ),
      bottom: DynamicBorderSide(
        width: 3,
        gradient: LinearGradient(
          colors: bottomColors
        ),
      )
    );

    return Container(
      width: size.width * 0.5,
      height: size.height * 0.5,
      child: Card(     
        // color: Theme.of(context).primaryColor.withOpacity(0.3),
        shape: widget.useImageOnLeftSide ? RoundedRectangleShapeBorder(
          borderRadius: DynamicBorderRadius.only(
            bottomRight: DynamicRadius.circular(
              Length(size.width * 0.1)
            )
          ),
          borderSides: borders,
        ): RoundedRectangleShapeBorder(
          borderRadius: DynamicBorderRadius.only(
            bottomLeft: DynamicRadius.circular(
              Length(size.width * 0.1)
            )
          ),
          borderSides: borders,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInDown(
                animate: true,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SelectableText(
                    widget.title,
                    style: textStyle(28, true),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Flexible(
                child: ElasticInLeft(
                  duration: Duration(milliseconds: 2000),
                  delay: Duration(milliseconds: 2000),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: widget.background.evaluate(AlwaysStoppedAnimation(widget.controller.value)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              widget.callToAction,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CustomElevatedButton(
                        text: "Get Started",
                        textcolor: Colors.white,
                        backgroundcolor: Theme.of(context).primaryColor,
                        onPressed: () {
                          Navigator.pushNamed(context, "/signup");
                        },
                      ),
                    )
                  ],
                ),
              )
            ]
          ),
        )
      )
    );
  }

  @override
  Widget build (BuildContext context) {    

    size = MediaQuery.of(context).size;
    double hPadding = widget.useHorizontalImagePadding ? 72: 0;
    List<Widget> children = [
      widget.useImageOnLeftSide ? imageContainer(): textContainer(),
      widget.useImageOnLeftSide ? textContainer(): imageContainer()
    ];
    return Container(
      height: size.height * 0.75,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: hPadding),
        child: Wrap(
          alignment: widget.useHorizontalImagePadding ? WrapAlignment.center: WrapAlignment.start,
          runAlignment: WrapAlignment.spaceEvenly,
          children: children
        ),
      ),
    );
  }
}
