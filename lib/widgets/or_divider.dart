import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Expanded buildDivider() {
      return Expanded(
        child: Divider(
          color: Theme.of(context).accentColor,
          height: 1.5
        ),
      ); 
    }
    return Container(
      width: size.width * 0.4,
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      child: Row(
        children: <Widget>[
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'OR',
              style: TextStyle(
                color: Colors.black, 
                fontWeight: FontWeight.w600,
                ),
              ),
          ),
          buildDivider(),
        ],
      ),
    );
  }
}