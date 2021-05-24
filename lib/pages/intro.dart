import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:clippy_flutter/clippy_flutter.dart';

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

  List<Widget> get intros {

    return [
      MySwiperPage(
        imagePath: "assets/images/benin_moat.jpg",
        title: "WELCOME",
        subtitle: "Ób’ókhían",
      ),
      MySwiperPage(
        imagePath: "assets/images/national_museum_benin_city.jpg",
        title: "EDO SOCIAL CITIZEN PLATFORM",
        subtitle: "This app bridges the communication gap between the Government and citizens of Edo state and promote financial inclusion that guarantee social empowerment and financial services"
      ),
      MySwiperPage(
        imagePath: "assets/images/ring_road.jpg",
        title: "EDO NO BE LAGOS",
        subtitle: "Placeholder text. Please request from client branding department."
      ),
      MySwiperPage(
        imagePath: "assets/images/igue_festival.jpg",
        title: "WELCOME",
        subtitle: "Placeholder text. Please request from client branding department."
      ),
      MySwiperPage(
        imagePath: "assets/images/edo_state_logo.png",
        title: "PAY YOUR TAX",
        subtitle: "Placeholder text. Please request from client branding department."
      )
    ];
  }

  @override
  Widget build (BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      
      body: Swiper(
        onIndexChanged: (int index) {
          if (index == 0) {
            
            swiperController.stopAutoplay();

            Future.delayed(Duration(seconds: 12)).then((value) {      
              swiperController.startAutoplay();
            });
          }
        },
        controller: swiperController,
        physics: ScrollPhysics(),
        autoplay: false,
        autoplayDisableOnInteraction: true,
        layout: SwiperLayout.DEFAULT,
        itemHeight: size.height,
        itemWidth: size.width,
        itemBuilder: (BuildContext context,int index) {
          return intros[index];          
        },
        itemCount: intros.length,
        pagination: new SwiperPagination(),
        // control: new SwiperControl(),
      )
    );
  }
}

class MySwiperPage extends StatelessWidget {
  const MySwiperPage({Key key, this.title, this.subtitle, this.imagePath}) : super(key: key);

  final String title;
  final String subtitle;
  final String imagePath;
  // final String titleAnimationType;

  @override
  Widget build (BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Colors.grey[200],
      child: Column(
        // fit: StackFit.expand,
        children: [        
          Image.asset(
            imagePath,
            width: size.width,
            height: size.height * 0.4,
            fit: BoxFit.fill,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              width: size.width,
              height: size.height * 0.6,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: ElasticInLeft(
                          child: Text(
                            title,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ElasticInRight(
                          child: Text(
                            subtitle,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]
      )
    );
  }
}