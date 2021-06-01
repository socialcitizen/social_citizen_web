
import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
import 'package:social_citizen_web/widgets/custom_textform_field.dart';
import 'package:social_citizen_web/widgets/intro_dashboard.dart';


class Dashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.5,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // IntroDashboard(
            //   bigText: 'Hello CJ',
            //   smallText: 'Manage Government provided services and pay for fines',
            //   image: 'assets/images/pencil.png',
            // ), 
            // SizedBox(
            // height: 25.0,
            // ),       
            CustomTextField(
              hintText: 'Search for fines',
              icon: Icon(Icons.search),
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: size.height,
                    width: size.width,
                    child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return ListileCard();
                        }),
                  ),
                ),

                Expanded(
                  child: Container(
                    child: Column(            
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/images/user.png'),
                    ),
                    SizedBox(
                          height: size.height * 0.02,
                        ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Name:', style: TextStyle(fontWeight:FontWeight.w300, fontSize: 20.0)),
                        SizedBox(
                          width: size.width * 0.01,
                        ),
                        Text('CJ', style: TextStyle( fontSize: 15.0)),

                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Number:', style: TextStyle(fontWeight:FontWeight.w300, fontSize: 20.0)),
                        SizedBox(
                          width: size.width * 0.01,
                        ),
                        Text('08037345790', style: TextStyle( fontSize: 15.0)),

                      ],
                    ),
                    CustomElevatedButton(
                      width: 150,
                      onPressed: () {
                        // Navigator.pushNamed(context, '/home');
                      },
                      text: 'Fine',
                      elevation: 1.0,
                      backgroundcolor: Theme.of(context).accentColor,
                    ),
              ],
            ),
            ),
          ),
          ],
        ),
        ],
      ),
      ),
    );
  }
}

class ListileCard extends StatelessWidget {
  const ListileCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("Running the red light"),
        subtitle: Text('This fine is for traffic offenders'),
      ),
    );
  }
}

