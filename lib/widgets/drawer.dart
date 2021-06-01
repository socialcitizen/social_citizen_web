import 'package:flutter/material.dart';
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
              CustomizedListTile(
                color: Theme.of(context).accentColor,
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
                text: 'Profile',
                icon: Icons.person,
              ),
              CustomizedListTile(
                color: Theme.of(context).accentColor,
                onTap: () {
                  Navigator.pushNamed(context, '/account');
                },
                text: 'Bank Account',
                icon: Icons.account_balance_wallet,
              ),
              CustomizedListTile(
                color: Theme.of(context).accentColor,
                onTap: () {
                  Navigator.pushNamed(context, '/sme');
                },
                text: 'My SME',
                icon: Icons.business,
              ),
              CustomizedListTile(
                color: Theme.of(context).accentColor,
                onTap: () {
                  Navigator.pushNamed(context, '/eportal');
                },
                text: 'E-government Portal',
                icon: Icons.grid_view,
              ),
              CustomizedListTile(
                color: Theme.of(context).accentColor,
                onTap: () {
                  Navigator.pushNamed(context, '/notifications');
                },
                text: 'Notifications',
                icon: Icons.notifications,
              ),
              CustomizedListTile(
                color: Theme.of(context).accentColor,
                onTap: () {
                  Navigator.pushNamed(context, '/admin');
                },
                text: 'Admin',
                icon: Icons.admin_panel_settings,
              ),
              CustomizedListTile(
                color: Theme.of(context).accentColor,
                onTap: () {},
                text: 'Log Out',
                icon: Icons.logout,
              ),
              
          ],
        );
      }
 
}


