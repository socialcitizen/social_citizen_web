import 'package:flutter/material.dart';

class ProfilePics extends StatelessWidget {
  const ProfilePics({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          // height: size.height * 1.15,
          // width: size.width * 1.15,
          height: 115,
          width: 115,
          child: Stack(
            clipBehavior: Clip.none, 
            fit: StackFit.expand,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/user.png'),
              ),
              Positioned(
                right:  -12,
                bottom: 0,
                child: SizedBox(
                  height: 45,
                  width: 45,
                  child: IconButton(
                    // color: Theme.of(context).accentColor ,
                    icon: Icon(Icons.add_circle, size: 40.0),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}