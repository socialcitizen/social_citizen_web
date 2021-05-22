import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({   
      Key key,
      this.login = true, 
      this.press  
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an account ?" : "Already have an account ?",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            ),
        ),
        SizedBox(
          width: size.width * 0.01,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(          
            onTap: press,
            child: Text(
              login ? "Sign Up" : "Sign In",
              style: TextStyle(
                color:Theme.of(context).accentColor,
                fontWeight: FontWeight.bold
                ),
            ),
          ),
        ),
      ],
    );
  }
}