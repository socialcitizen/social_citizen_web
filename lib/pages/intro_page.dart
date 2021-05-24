import 'dart:math';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:social_citizen_web/widgets/services.dart';

class ItemData{
  // final Color color;
  final String image;
  // final String text1;
  // final String text2;
  final String text1;
  final Widget row;

  ItemData(this.image, this.text1, this.row);
}

/// Example of LiquidSwipe with itemBuilder
class IntroPage extends StatefulWidget {
  @override
  _IntroPage createState() => _IntroPage();
}

class _IntroPage extends State<IntroPage> {
  int page = 0;
  LiquidController liquidController;
  UpdateType updateType;

  List<ItemData> data = [
    ItemData("assets/images/ring-road.jpg", "Ób’ókhían", Text('welcome',style: TextStyle(fontWeight:FontWeight.bold, fontSize: 40.0),)),
    ItemData("assets/images/ring-road.jpg", "Edo Social Citizen App", 
    Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
      child: Text('This app bridges the communication gap between the Government and citizens of Edo state and promote financial inclusion that guarantee social empowerment and financial services', textAlign: TextAlign.center, style: TextStyle(fontSize: 40.0),),
    )),
    ItemData("assets/images/ring-road.jpg", "Services", Services()),

    // ItemData(Colors.deepPurpleAccent, "assets/1.png", "Take a", "Look At", "Liquid Swipe"),
    // ItemData(Colors.green, "assets/1.png", "Liked?", "Fork!", "Give Star!"),
    // ItemData(Colors.yellow, "assets/1.png", "Can be", "Used for", "Onboarding design"),
    // ItemData(Colors.red, "assets/1.png", "Do", "try it", "Thank you"),
  ];
  @override
  void initState() {
    liquidController = LiquidController();
    super.initState();
  }

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((page ?? 0) - index).abs(),
      ),
    );
    double zoom = 1.0 + (2.0 - 1.0) * selectedness;
    return new Container(
      width: 25.0,
      child: new Center(
        child: new Material(
          color: Colors.white,
          type: MaterialType.circle,
          child: new Container(
            width: 8.0 * zoom,
            height: 8.0 * zoom,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            LiquidSwipe.builder(
              itemCount: data.length,
              itemBuilder: (context, index){
                return Container(
                  // child: Container(
                    constraints: BoxConstraints.expand(),                      
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        // colorFilter: new ColorFilter.mode(Colors.yellow, BlendMode.dstATop),
                        colorFilter: new ColorFilter.mode(Colors.yellow[600].withOpacity(1.0), BlendMode.dstATop),
                        image: AssetImage(
                        data[index].image),
                        fit: BoxFit.cover,                            
                      ),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[                      
                        Text(
                          data[index].text1,
                          style: TextStyle(fontWeight:FontWeight.bold, fontSize: 60.0),
                        ),
                        data[index].row,
                      ],
                  ),
                  // ),
                    
                      
                    
                  
                  // ),
                );
              },
              positionSlideIcon: 0.8,
              slideIconWidget: Icon(Icons.arrow_back_ios),
              onPageChangeCallback: pageChangeCallback,
              waveType: WaveType.liquidReveal,
              liquidController: liquidController,
              ignoreUserGestureWhileAnimating: true,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Expanded(child: SizedBox()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(data.length, _buildDot),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: ElevatedButton(
                  onPressed: () {
                    // liquidController.animateToPage(
                    //     page: data.length - 1, duration: 700);
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text("Sign up"),
                  style: ElevatedButton.styleFrom(
                     primary: Color(0xff800000),                    
                     onPrimary: Colors.white,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: ElevatedButton(
                  onPressed: () {
                    liquidController.jumpToPage(
                        page:
                            liquidController.currentPage + 1 > data.length - 1
                                ? 0
                                : liquidController.currentPage + 1);
                  },
                  child: Text("Next"),
                  style: ElevatedButton.styleFrom(
                     primary: Color(0xffFFFF00),
                     onPrimary: Colors.black,
                  ),                  
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  pageChangeCallback(int lpage) {
    setState(() {
      page = lpage;
    });
  }
}
