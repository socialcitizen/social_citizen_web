import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:social_citizen_web/widgets/text.dart';


final String cLogoPath = "assets/image/edo_state_logo.png";

TextStyle textStyle (double fontSize, bool bold) {

  return TextStyle(
    fontSize: fontSize,
    fontWeight: bold ? FontWeight.bold: FontWeight.w500,
    color: Colors.black,
  );
}

class IntroPage extends StatefulWidget {
  
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  
  SwiperController swiperController;

  @override
  void initState() {
    
    super.initState();    

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
            backgroundColor: Colors.white,
            pinned: true,
            // floating: true,
            // snap: true,
            stretch: true,
            titleSpacing: 0.0,
            // iconTheme: new IconThemeData(color: Colors.black),
            expandedHeight: size.height,// * 0.65,
            actions: <Widget>[
              CustomElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/signup");
                },
                text: "LOGIN",
                backgroundcolor: Colors.white,
                textcolor: Colors.black
              ),
              CustomElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/signup");
                },
                text: "SIGNUP",
                textcolor: Colors.white,
                backgroundcolor: Theme.of(context).accentColor,
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              // stretchModes: [StretchMode.fadeTitle],
              titlePadding: EdgeInsets.zero,
              background: Image.asset(
                "images/1.jpg",
                fit: BoxFit.cover
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
                      child: Text(
                        "EDO STATE SOCIAL CITIZEN PLATFORM",
                        style: textStyle(24, true)
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
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                height: size.height,
                // padding: const EdgeInsets.all(64),
                // width: MediaQuery.of(context).size.width,
                child: ListView(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  children: <Widget>[
                    // First
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 72),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            width: size.width * 0.3,
                            height: size.height * 0.5,
                            child: Image.asset(
                              "images/2.jpeg",
                              fit: BoxFit.cover,                              
                            ),
                          ),
                          Container(
                            width: size.width * 0.5,
                            height: size.height * 0.5,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 32.0),
                              child: Material(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                // elevation: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FadeInDown(
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          "A new way of being active",
                                          style: textStyle(28, true),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),
                                    ElasticInLeft(
                                      child: Flexible(
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Text(
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                                            style: TextStyle(
                                              fontSize: 16
                                            ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Second
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 72),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.5,
                            height: size.height * 0.5,
                            child: Padding(
                              padding: const EdgeInsets.all(32.0),
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
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.grey[200]
                            ),
                            width: size.width * 0.3,
                            height: size.height * 0.5,
                            child: Image.asset(
                              "images/4.jpeg",
                              fit: BoxFit.cover,                              
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Third
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32),
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            width: size.width * 0.5,
                            height: size.height * 0.5,
                            child: Image.asset(
                              "images/6.jpeg",
                              fit: BoxFit.cover,                              
                            ),
                            padding: EdgeInsets.zero,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(64.0),
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
                        ],
                      ),
                    ),
                  
                    // Fourth
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(32.0),
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
                )
              )
            ])
          )
        ]
      )
    );
  }
}