import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  // final String labelText;
  final String hintText;
  final Widget icon;
  final TextInputType keyboardType;
  final int maxLines;
  final double width;
  // final bool expands;
  // final FormFieldSetter<String> onSaved;
  // final FormFieldValidator<String> validator;

  CustomTextField({
    // this.labelText,
    this.hintText,
    this.icon,
    this.keyboardType,
    this.maxLines,
    this.width ,
    // this.expands,
    // this.onSaved,
    // this.validator
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // return Padding(
    //   padding: const EdgeInsets.fromLTRB(150.0, 5.0, 150.0, 5.0),
    //   child:
    return Container(
      width: size.width * 0.5,
      
      padding: EdgeInsets.only(bottom: 10.0),
      child: TextFormField(
        keyboardType: keyboardType,
        // onSaved: onSaved,
        // validator: validator,
        maxLines: maxLines,
        // expands: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          // labelText: labelText,
          prefixIcon: icon,
          hintText: hintText,
        ),
      ),
    );
    // );
  }
}
