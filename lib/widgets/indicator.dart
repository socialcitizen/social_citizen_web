import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Indicator extends StatefulWidget {
  Indicator({Key key}) : super(key: key);

  @override
  _IndicatorState createState() => _IndicatorState();
}

class _IndicatorState extends State<Indicator> {
  @override
  Widget build(BuildContext context) {
    // return  CircularPercentIndicator(
    //   radius: 60.0,
    //   lineWidth: 5.0,
    //   percent: 1.0,
    //   center: new Text("50%"),
    //   progressColor: Theme.of(context).accentColor,
    // );
    return CircularPercentIndicator(
      radius: 130.0,
      animation: true,
      animationDuration: 1200,
      lineWidth: 15.0,
      percent: 0.4,
      center: new Text(
        "50%",
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      circularStrokeCap: CircularStrokeCap.butt,
      backgroundColor: Colors.yellow,
      progressColor: Colors.red,
    );
  }
}
