import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/customized_tile.dart';

class AdminDrawer extends StatelessWidget {
  const AdminDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
              CustomizedListTile(
                color: Theme.of(context).accentColor,
                onTap: () {
                  // Navigator.pushNamed(context, '/profile');
                },
                text: 'Menu 1',
                // icon: Icons.person,
              ),
              CustomizedListTile(
                color: Theme.of(context).accentColor,
                onTap: () {
                  // Navigator.pushNamed(context, '/account');
                },
                text: 'Menu 2',
                // icon: Icons.account_balance_wallet,
              ),
              CustomizedListTile(
                color: Theme.of(context).accentColor,
                onTap: () {
                  // Navigator.pushNamed(context, '/sme');
                },
                text: 'Menu 3',
                // icon: Icons.business,
              ),
              CustomizedListTile(
                color: Theme.of(context).accentColor,
                onTap: () {
                  // Navigator.pushNamed(context, '/notifications');
                },
                text: 'Menu 4',
                // icon: Icons.notifications,
              ),
              CustomizedListTile(
                color: Theme.of(context).accentColor,
                onTap: () {
                  // Navigator.pushNamed(context, '/admin');
                },
                text: 'Menu 5',
                // icon: Icons.admin_panel_settings,
              ),
              CustomizedListTile(
                color: Theme.of(context).accentColor,
                onTap: () {},
                text: 'Menu 6',
                // icon: Icons.logout,
              ),
              CustomizedListTile(
                color: Theme.of(context).accentColor,
                onTap: () {},
                text: 'Menu 7',
                // icon: Icons.logout,
              ),
              
          ],
        );
 
  }
}