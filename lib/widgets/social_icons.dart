import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcons extends StatelessWidget {
  final Function press;
  final String iconSrc;
  const SocialIcons({
    Key key,
    this.press, 
    this.iconSrc
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2.0,
            color: Theme.of(context).accentColor,
          ),
          shape: BoxShape.circle,          
        ),
        child: SvgPicture.asset(
          iconSrc,
          height: 20,
        ) ,
      ),
    );
  }
}