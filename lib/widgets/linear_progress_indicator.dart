import 'package:flutter/material.dart';

class MyLinearProgressIndicator extends StatelessWidget {
  const MyLinearProgressIndicator({Key key, this.value}) : super(key: key);

  final double value;

  @override
  Widget build (BuildContext context) {
    
    return LinearProgressIndicator(
      value: value,
      semanticsLabel: "Process ongoing",
      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      backgroundColor: Theme.of(context).primaryColor
    );
  }
}