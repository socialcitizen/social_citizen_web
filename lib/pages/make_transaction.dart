import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
import 'package:social_citizen_web/widgets/custom_textform_field.dart';

class MakeTransaction extends StatefulWidget {
  MakeTransaction({Key key}) : super(key: key);

  _MakeTransactionState createState() => _MakeTransactionState();
}

class _MakeTransactionState extends State<MakeTransaction> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              hintText: 'Receiver\'s Name',
            ),
            CustomTextField(
              hintText: 'Destination Account Number',
            ),
            CustomTextField(
              hintText: 'Destination Bank',
            ),
            CustomElevatedButton(
              width: size.width * 0.5,
              onPressed: (){
                // Navigator.pushNamed(context, '/cug');
              },
              text: 'Transfer',
              elevation: 1.0,
              backgroundcolor: Theme.of(context).accentColor,                  
            ),
          ],
        ),
      ),
    );
  }
}