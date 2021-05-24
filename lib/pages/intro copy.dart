import 'package:animate_do/animate_do.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/delayed_animation.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


final String cLogoPath = "assets/image/edo_state_logo.png";

TextStyle textStyle (double fontSize) {

  // return GoogleFonts.grenze(
  // return GoogleFonts.dancingScript(
  return TextStyle(
    fontSize: fontSize,
    // fontWeight: FontWeight.bold,
    color: Colors.black,
  );
}

Widget cLogoWidget (BuildContext context) {

  return InkWell(
    onTap: () async {
      await Future.delayed(Duration(milliseconds: 175));
      await Navigator.of(context).pushNamed("/signup");
    },
    child: AvatarGlow(
      endRadius: 90,
      duration: Duration(seconds: 1),
      glowColor: Colors.deepPurple,
      curve: Curves.elasticInOut,
      repeat: true,
      repeatPauseDuration: Duration(seconds: 1),
      startDelay: Duration(seconds: 2),
      child: Material(
        elevation: 8.0,
        shape: CircleBorder(),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Image.asset(
            cLogoPath
          ),
          radius: 50.0,
        )
      ),
    ),
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

  List<Widget> get intros {

    return [
      _MyIntro(),
      _MyImageIntro("benin_moat.jpg"),
      _MyImageIntro("national_museum_benin_city.jpg"),
      _MyImageIntro("ring_road.jpg"),
      _MyImageIntro("igue_festival.jpg"),
      _MyImageIntro("edo_State_logo.png"),
    ];
  }

  List<String> get introText {

    return [
      "",
      "Are you single ...",// and ready to find your right man?",
      /*"Are you single, confident */" ... and enthusiastic about finding your missing rib?",
      "Strike the timeless chords of memory ...",// when you find your hearthrob.",
      " ... when you cleave to the one you love.",
      "And Live Happily Ever After.",
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
          
          Widget widget = intros[index];
          return index == 0 ? widget: Stack(
            children: [
              
              // Image of model/svg or similar.
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: size.height * 0.6,
                  width: size.width,
                  child: widget,
                ),
              ),

              // C logo & some text describing each swipe.
              Positioned(
                top: size.height * 0.48,
                left: size.width * 0.02,
                right: size.width * 0.02,
                child: Column(
                  children: [
                    ElasticIn(
                      child: cLogoWidget(context)
                    ),

                    MyDelayedAnimation(
                      child: Text(
                        "${introText[index]}",
                        style: textStyle(25),
                        textAlign: TextAlign.center,                          
                      ),
                      delay: 500,
                    ),
                  ],
                ),
              ),
              
            ],
          );
        },
        itemCount: intros.length,
        pagination: new SwiperPagination(),
        // control: new SwiperControl(),
      )
    );
  }

}

class _MyIntro extends StatefulWidget {
  const _MyIntro({Key key,  }) : super(key: key);

  @override
  __MyIntroState createState() => __MyIntroState();
}

class __MyIntroState extends State<_MyIntro> with SingleTickerProviderStateMixin {
  
  final int delayedAmount = 500;
  double _scale;
  AnimationController _controller;
    
  @override
  void initState() {
    
    super.initState();
    
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });
    
  }  

  Widget get _animatedButtonUI => ElasticIn(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
        height: size.height * 0.25,
        width: size.width * 0.75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Colors.black12,
        ),
        child: Center(
          child: Image.asset(
            "assets/image/cleave_logo_no_bg.png",
            fit: BoxFit.cover
          ),
          // child: Text(
          //   "CLEAVE",
          //   style: TextStyle(
          //     fontSize: 20.0,
          //     fontWeight: FontWeight.bold,
          //     color: Colors.deepPurple,
          //   ),
          // ),
        ),
    ),
      ),
  );

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }

  @override
  Widget build (BuildContext context) {

    final color = Colors.black;
    _scale = 1 - _controller.value;
    
    return Center(
      child: Stack(
        children: <Widget>[

          // Glowing logo
          Positioned(
            top: size.height * 0.0125,
            left: size.width * 0.02,
            right: size.width * 0.02,
            child: cLogoWidget(context)
          ),
          
          Positioned(
            top: size.height * 0.3,
            left: size.width * 0.02,
            right: size.width * 0.02,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyDelayedAnimation(
                    child: Text(
                      "For this cause...",
                      style: textStyle(35),
                    ),
                    delay: delayedAmount + 1000,
                  ),
                ),

                SizedBox(
                  height: size.height * 0.01
                ),
          
                MyDelayedAnimation(
                  child: Text(
                    "shall a man",
                    style: textStyle(25),
                  ),
                  delay: delayedAmount + 3500,
                ),

                MyDelayedAnimation(
                  child: Text(
                    "leave father and mother",
                    style: textStyle(25),
                  ),
                  delay: delayedAmount + 6000,
                ),

                MyDelayedAnimation(
                  child: Text(
                    "and cleave to his wife.",
                    style: textStyle(25),
                  ),
                  delay: delayedAmount + 8000,
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: MyDelayedAnimation(
                    noSlide: true,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 64.0),
                      child: ElasticInRight(
                        child: Text(
                          "GENESIS 2:24",
                          textAlign: TextAlign.right,
                          style: textStyle(12),
                        ),
                      ),
                    ),
                    delay: delayedAmount + 9500,
                  ),
                ),
          
              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: MyDelayedAnimation(
              child: InkResponse(
                splashColor: Colors.white,
                radius: size.width * 0.25,
                onTap: () async => await Navigator.of(context).pushNamed(MyPageStateNames.login_signup.toString()),
                onTapDown: _onTapDown,
                // onTapUp: _onTapUp,
                child: Transform.scale(
                  scale: _scale,
                  child: _animatedButtonUI,
                ),
              ),
              delay: delayedAmount + 10000,
            )
          )
        ],
      ),
    );
  }
}

class _MyImageIntro extends StatelessWidget {
  _MyImageIntro(this.src);

  final String src;

  @override
  Widget build (BuildContext context) {

    return src.startsWith("http") ? Image.network(
      src,
      fit: BoxFit.fill
    ): Image.asset(
      "assets/image/$src",
      fit: BoxFit.fill
    );
  }
}