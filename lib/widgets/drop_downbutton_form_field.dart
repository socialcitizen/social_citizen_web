import 'package:flutter/material.dart';

class CustomDropdownButtonFormField extends StatelessWidget {
  final String hintText;
  final Function onChanged;
  final List<DropdownMenuItem<dynamic>> items;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final String value;
  // final List<String> stringList;
  // final List<int> intList;

  const CustomDropdownButtonFormField({
    Key key,
    this.hintText,
    this.onChanged,
    this.items,
    this.onSaved,
    this.validator,
    this.value
    // this.stringList,
    // this.intList
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.5,
      padding: EdgeInsets.only(bottom: 10.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),        
        ),
        hint: Text(
          hintText
        ),
        onChanged: onChanged,
        validator: validator,
        value: value,
        onSaved: onSaved,
        items: items,
      ),
    );
  }
}