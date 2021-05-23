import 'dart:math';
import 'package:flutter/material.dart';
import 'package:social_citizen_web/pages/home.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:social_citizen_web/widgets/custom_textform_field.dart';
import 'package:social_citizen_web/widgets/drop_downbutton_form_field.dart';
import 'package:social_citizen_web/widgets/theme.dart';

class ItemData{
  final Color color;
  final String image;
  final String text1;
  final Widget textField;
 

  ItemData(this.color, this.image, this.text1, this.textField);
}

/// Example of LiquidSwipe with itemBuilder
class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPage createState() => _OnBoardingPage();
}

class _OnBoardingPage extends State<OnBoardingPage> {
  int page = 0;
  LiquidController liquidController;
  UpdateType updateType;
  

  List<ItemData> data = [
    ItemData(Colors.white, "assets/images/welcome.jpg", "We want your experience to be as smooth as possible, kindly supply us your details, we also don't want to be a bother do you can skip this for later", Text('t')),
    ItemData(Colors.white, "assets/images/hello.jpg", "Let's get to know you", CustomTextField(
                hintText: 'First Name',
              ),),
    ItemData(Colors.white, "assets/images/hello.jpg", "Let's get to know you", CustomTextField(
                hintText: 'Last Name',
              ),),
    ItemData(Colors.white, "assets/images/number.jpg", "Your Preferred mobile Number", CustomTextField(
                hintText: 'Mobile Number',
              ),),
    ItemData(Colors.white, "assets/images/email.jpg", "Your Preferred Email Address",  CustomTextField(
                hintText: 'Email',
              ),),
    ItemData(Colors.white, "assets/images/gender.jpg", "Choose the gender that best identifies you",  CustomDropdownButtonFormField(                                
                       hintText: 'Gender',                     
                        items: ['Female', 'Male']
                        .map<DropdownMenuItem<String>>(
                            (String value) {
                          return DropdownMenuItem<
                              String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),                                                                                                          
                     ),),
    ItemData(Colors.white, "assets/images/question.jpg", "What is your relationship status?",  CustomDropdownButtonFormField(                                
                       hintText: 'Marital',                     
                        items: ['married', 'Single']
                        .map<DropdownMenuItem<String>>(
                            (String value) {
                          return DropdownMenuItem<
                              String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),                                                                                                           
                     ),),
    ItemData(Colors.white, "assets/images/profession.jpg", "Choose a profession", CustomDropdownButtonFormField(                                
                       hintText: 'Profession',                     
                        items: ['Programmer', 'Doctor', 'Teacher']
                        .map<DropdownMenuItem<String>>(
                            (String value) {
                          return DropdownMenuItem<
                              String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),                                                                                                           
                     ),),
     ItemData(Colors.white, "assets/images/address.jpg", "Choose your Local Government Area", CustomDropdownButtonFormField(                                
                       hintText: 'LGA',                     
                        items: ['Eti-osa', 'Somolu', 'Ifako']
                        .map<DropdownMenuItem<String>>(
                            (String value) {
                          return DropdownMenuItem<
                              String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),                                                                                                           
                     ),),

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
          color: Colors.black,
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
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      theme: theme,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            LiquidSwipe.builder(
              itemCount: data.length,
              itemBuilder: (context, index){
                return Container(
                  color: data[index].color,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset(
                        data[index].image,
                         width: size.width * 0.35,
                        // fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            data[index].text1, 
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)                          
                          ), 
                          SizedBox(
                          height: size.height * 0.03,
                          ),                          
                          data[index].textField,                            
                                                  
                        ],
                      ),
                    ],
                  ),
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
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: Text("Done"),
                  style: ElevatedButton.styleFrom(
                     primary: Color(0xff800000),                    
                     onPrimary: Colors.white,
                  ),
                  // color: Colors.white.withOpacity(0.01),
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
                  // color: Colors.white.withOpacity(0.01),
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
