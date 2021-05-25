import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
import 'package:social_citizen_web/widgets/custom_textform_field.dart';
import 'package:social_citizen_web/widgets/customized_tile.dart';
import 'package:social_citizen_web/widgets/drawer.dart';
import 'package:social_citizen_web/widgets/drop_downbutton_form_field.dart';
import 'package:social_citizen_web/widgets/indicator.dart';
import 'package:social_citizen_web/widgets/links.dart';
import 'package:social_citizen_web/widgets/profile_pics.dart';
import 'package:social_citizen_web/widgets/text.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String gender;
  String status;
  String profession;
  String lga;
  List<String> genders = ['Female', 'Male'] ;
  List<String> professions = ['Programmer', 'Doctor', 'Teacher'] ;
  List<String> maritalstatus = ['married', 'Single'] ;
  List<String> lgas = ['Eti-osa', 'Somolu', 'Ifako'] ;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: NavLinks(),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Theme.of(context).accentColor,
        ),
      ),
      backgroundColor: Colors.white,
       drawer: Drawer(
         child: MainDrawer(),
       ),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Card(
                        child: Column(
                          children: [
                            // LinearProgressIndicator(),
                            Indicator(),
                            CustomizedListTile(
                            color: Theme.of(context).accentColor,
                            onTap: () {
                              // Navigator.pushNamed(context, '/profile');
                            },
                            text: 'Edit Profile',
                            icon: Icons.edit,
                            leadingIcon: Icons.keyboard_arrow_right,
                          ),
                          CustomizedListTile(
                            color: Theme.of(context).accentColor,
                            onTap: () {
                              // Navigator.pushNamed(context, '/profile');
                            },
                            text: 'Change Password',
                            icon: Icons.lock,
                          ),
                          CustomizedListTile(
                            color: Theme.of(context).accentColor,
                            onTap: () {
                              // Navigator.pushNamed(context, '/profile');
                            },
                            text: 'Change Pin',
                            icon: Icons.lock,
                          ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height * 0.05,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                 'Edit Profile', textAlign: TextAlign.left,
                                 style:  TextStyle(fontSize:  30, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            ProfilePics(),
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            CustomTextField(
                              hintText: 'First Name',
                              icon: Icon(Icons.person, color: Theme.of(context).accentColor,),
                            ),
                            CustomTextField(
                              hintText: 'Last Name',
                              icon: Icon(Icons.person, color: Theme.of(context).accentColor,),
                            ),
                            CustomTextField(
                              hintText: 'Mobile Number',
                              icon: Icon(Icons.phone, color: Theme.of(context).accentColor,),
                            ),
                            CustomTextField(
                              hintText: 'Email',
                              icon: Icon(Icons.email, color: Theme.of(context).accentColor,),
                            ),
                            
                                      
                                CustomDropdownButtonFormField(                                
                                    hintText: 'Gender',                     
                                      items: genders
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<
                                            String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),                                            
                                      onChanged: (String newValue) {
                                      setState(() {
                                        gender = newValue;
                                        print(gender);
                                      });                                            
                                    },                                        
                                  ),
                                  CustomDropdownButtonFormField(                                
                                    hintText: 'Marital',                     
                                      items: maritalstatus
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<
                                            String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),                                            
                                      onChanged: (String newValue) {
                                      setState(() {
                                        status = newValue;
                                        print(status);
                                      });                                            
                                    },                                        
                                  ),
                                  CustomDropdownButtonFormField(                                
                                    hintText: 'Profession',                     
                                      items: professions
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<
                                            String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),                                            
                                      onChanged: (String newValue) {
                                      setState(() {
                                        profession = newValue;
                                        print(profession);
                                      });                                            
                                    },                                        
                                  ),
                                  CustomDropdownButtonFormField(                                
                                    hintText: 'LGA',                     
                                      items: lgas
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<
                                            String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),                                            
                                      onChanged: (String newValue) {
                                      setState(() {
                                        lga = newValue;
                                        print(lga);
                                      });                                            
                                    },                                        
                                  ),
                                  CustomElevatedButton(
                                      width: size.width * 0.5,
                                      text: 'Update',
                                      onPressed: (){},
                                      backgroundcolor:Theme.of(context).accentColor,
                                    ),
            
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      // color: Colors.purple,
                    ),
                  ),
                ],),
            ),
            
             
          ],
        ),
      ),
    );
  }
}