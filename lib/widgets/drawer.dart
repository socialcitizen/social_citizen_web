import 'package:flutter/material.dart';
import 'package:social_citizen_web/pages/CUG_group.dart';
import 'package:social_citizen_web/pages/job_search.dart';
import 'package:social_citizen_web/widgets/customized_tile.dart';



class MainDrawer extends StatelessWidget {
  
  const MainDrawer({Key key}) : super(key: key);
  
  
  @override  
  Widget build(BuildContext context) {  
      Size size = MediaQuery.of(context).size;
        return Column(
          children: <Widget>[
            Container(
              color: Theme.of(context).accentColor, 
              width: double.infinity,
              padding: EdgeInsets.all(20.0),             
              // child: Center(               
              //   child: Column(
              //     // mainAxisAlignment: MainAxisAlignment.center,
              //     // crossAxisAlignment: CrossAxisAlignment.center,
              //     children: <Widget>[
              //       CircleAvatar(
              //         radius: 50.0,
              //         backgroundImage: AssetImage('assets/images/user.png'),
              //       ),
                    
              //     ],
              //   ),
              // ) ,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),             
              // CustomizedListTile(
              //   color: Theme.of(context).accentColor,
              //   onTap: () {
              //     Navigator.pushNamed(context, '/profile');
              //   },
              //   text: 'Profile',
              //   icon: Icons.person,
              // ),
              // CustomizedListTile(
              //   color: Theme.of(context).accentColor,
              //   onTap: () {
              //     Navigator.pushNamed(context, '/account');
              //   },
              //   text: 'Bank Account',
              //   icon: Icons.account_balance_wallet,
              // ),
              // CustomizedListTile(
              //   color: Theme.of(context).accentColor,
              //   onTap: () {
              //     Navigator.pushNamed(context, '/sme');
              //   },
              //   text: 'My SME',
              //   icon: Icons.business,
              // ),
              // CustomizedListTile(
              //   color: Theme.of(context).accentColor,
              //   onTap: () {
              //     Navigator.pushNamed(context, '/eportal');
              //   },
              //   text: 'E-government Portal',
              //   icon: Icons.grid_view,
              // ),
              // CustomizedListTile(
              //   color: Theme.of(context).accentColor,
              //   onTap: () {
              //     Navigator.pushNamed(context, '/notifications');
              //   },
              //   text: 'Notifications',
              //   icon: Icons.notifications,
              // ),
              // CustomizedListTile(
              //   color: Theme.of(context).accentColor,
              //   onTap: () {
              //     Navigator.pushNamed(context, '/admin');
              //   },
              //   text: 'Admin',
              //   icon: Icons.admin_panel_settings,
              // ),
              // CustomizedListTile(
              //   color: Theme.of(context).accentColor,
              //   onTap: () {},
              //   text: 'Log Out',
              //   icon: Icons.logout,
              // ),
              CustomizedListTile(
                color: Colors.black,
                onTap: () {
                  Navigator.pushNamed(context, '/admin');
                },
                text: 'Dashboard',
                icon: Icons.person,
              ),              
              CustomizedListTile(
                color: Colors.black,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => 
                    CUGGroupPage(
                      title: 'Escalation',
                      escalation: 'Add an Escalation',
                    )),
                  );
                },
                text: 'Forum',
                icon: Icons.forum,
              ),
              CustomizedListTile(
                color: Colors.black,
                onTap: () {
                 Navigator.pushNamed(context, '/jobsearch');
                },
                text: 'Jobs',
                icon: Icons.business_center,
              ),
              CustomizedListTile(
                color: Colors.black,
                onTap: () {
                  Navigator.pushNamed(context, '/eportal');
                },
                text: 'E-government Portal',
                icon: Icons.grid_view,
              ),
              CustomizedListTile(
                color: Colors.black,
                onTap: () {
                  Navigator.pushNamed(context, '/cug');
                },
                text: 'CUG',
                icon: Icons.group,
              ),
              CustomizedListTile(
                color: Colors.black,
                onTap: () {
                  Navigator.pushNamed(context, '/sme');
                },
                text: 'SME',
                icon: Icons.notifications,
              ),
              CustomizedListTile(
                color: Colors.black,
                onTap: () {
                  Navigator.pushNamed(context, '/account');
                },
                text: 'Bank Account',
                icon: Icons.account_balance_wallet,
              ),
              CustomizedListTile(
                color: Colors.black,
                onTap: () {},
                text: 'Settings',
                icon: Icons.settings,
              ),
              
          ],
        );
      }
 
}


