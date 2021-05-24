import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
import 'package:social_citizen_web/widgets/custom_textform_field.dart';
import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/links.dart';
import 'package:social_citizen_web/widgets/text.dart';

class BankAccount extends StatefulWidget {
  BankAccount({Key key}) : super(key: key);

  _BankAccountState createState() => _BankAccountState();
}

class _BankAccountState extends State<BankAccount> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: NavLinks(),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
        color: Theme.of(context).accentColor,
        // size: 40.0,
      ),        
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Card(
              elevation: 2.0,
              // shape: ,
              margin: EdgeInsets.all(5.0),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MySmallText(
                            text: "Account Number"
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MySmallText(
                            text: "0050678943"
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                     Row(
                      children: [
                        Text('Zenith', style: TextStyle(fontWeight:FontWeight.w300, fontSize: 20.0)),
                        SizedBox(
                          width: size.width * 0.01,
                        ),
                        // Text('0050678943'),

                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      children: [
                        Text('Account Balance:', style: TextStyle(fontWeight:FontWeight.w300, fontSize: 20.0)),
                        SizedBox(
                          width: size.width * 0.01,
                        ),
                        Text('#55,000.00', style: TextStyle(fontWeight:FontWeight.w100, fontSize: 20.0)),

                      ],                      
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    CustomElevatedButton(
                      width: size.width * 0.2,
                      text: 'Make a Transaction',
                      onPressed: (){
                        // Navigator.pushNamed(context, '/transaction');
                      },
                      backgroundcolor:Theme.of(context).accentColor,
                  ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex:3,
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // CustomElevatedButton(
                //     width: size.width * 0.3,
                //     text: 'Make a Transaction',
                //     onPressed: (){
                //       Navigator.pushNamed(context, '/transaction');
                //     },
                //     backgroundcolor:Theme.of(context).accentColor,
                // ),
                SizedBox(
                  height: size.height * 0.06,
                ),
                CustomTextField(
                  hintText: 'Receiver\'s Name',
                ),
                CustomTextField(
                  hintText: "Amount",
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
        ],
      ),
    );
  }
}