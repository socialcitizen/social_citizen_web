import 'package:flutter/material.dart';

class SquareCustomTextField extends StatelessWidget {
  final String labelText;    
  final TextInputType keyboardType;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;

  SquareCustomTextField(
    {
      this.labelText,      
      this.keyboardType, 
      this.onSaved,
      this.validator            
    });
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(          
      keyboardType: keyboardType, 
      onSaved: onSaved,
      validator: validator,          
     decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
      ),

    );
  }
}