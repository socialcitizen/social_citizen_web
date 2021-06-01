// import 'package:clmac_dashboard_webapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_citizen_web/widgets/custom_elevated_button.dart';
import 'package:social_citizen_web/widgets/custom_textform_field.dart';
import 'package:social_citizen_web/widgets/drop_downbutton_form_field.dart';
import 'package:social_citizen_web/widgets/intro_dashboard.dart';
import 'package:social_citizen_web/widgets/profile_pics.dart';
import 'package:social_citizen_web/widgets/square_avatar.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.5,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IntroDashboard(
              bigText: 'Hello CJ!',
              smallText: 'Manage everything about your profile here',
              image: 'assets/images/pencil.png',
            ),
            SizedBox(
            height: 25.0,
            ),
            Text('Edit Profile',
            style: GoogleFonts.raleway(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              color: Colors.black),
              textAlign: TextAlign.center
            ),
            SizedBox(
            height: 15.0,
            ),
            ProfilePics(),
            SizedBox(
            height: 10.0,
            ),
            Text('Add Profile Picture',
            style: GoogleFonts.quicksand(
              fontSize: 20.0,
              // fontWeight: FontWeight.bold,
              color: Colors.black),
              textAlign: TextAlign.center
            ),
            SizedBox(
            height: 15.0,
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
                  width: 150,
                  text: 'Update',
                  onPressed: (){},
                  backgroundcolor:Theme.of(context).accentColor,
                ),
          ],
        ),
      ),
    );
  }
}

