import 'package:flutter/material.dart';

class CustomizedListTile extends StatelessWidget {
  final Color color;
  final Function onTap;
  final String text;
  final IconData icon;
  final IconData leadingIcon;
  const CustomizedListTile({
    Key key,
    this.color,
    this.onTap,
    this.text,
    this.icon,
    this.leadingIcon,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: color,
      onTap: onTap,
      child: ListTile(        
        title: Text(
          text, 
          style: TextStyle(
            fontSize: 15.0, 
            color: Theme.of(context).accentColor,                 
            ),),
        leading: Icon(
          icon,
          color: Theme.of(context).accentColor,
        ),
        trailing:Icon(
          leadingIcon,
          color: Theme.of(context).accentColor,
        ),
      ),     
    );
  }
}