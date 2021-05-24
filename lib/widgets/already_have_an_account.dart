import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// import 'package:shimmer/shimmer.dart';
import 'package:social_citizen_web/widgets/text.dart';

class AlreadyHaveAnAccountCheck extends StatefulWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({   
      Key key,
      this.login = true, 
      this.press  
    }) : super(key: key);

  @override
  _AlreadyHaveAnAccountCheckState createState() => _AlreadyHaveAnAccountCheckState();
}

class _AlreadyHaveAnAccountCheckState extends State<AlreadyHaveAnAccountCheck> {
  
  Color hoverColor;
  Colors color;
  @override
  void initState() { 
    super.initState();
    
  }

  @override
  Widget build (BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    
    hoverColor = Theme.of(context).accentColor;

    return Container(
      // color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: MySmallerText(
              text: widget.login ? "Don't have an account?" : "Already have an account?"
            )
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            onHover: (event) {
              setState(() => hoverColor = Colors.black);
            },
            child: Material(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(32),
              child: InkWell(
                splashColor: Theme.of(context).accentColor,
                radius: 400,
                borderRadius: BorderRadius.circular(32),
                onTap: widget.press,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: MySmallerText(
                    text: widget.login ? "Sign Up" : "Sign In",
                    color: hoverColor
                  )
                )
              )
            ),
          ),
        ],
      )
    );
  }
}