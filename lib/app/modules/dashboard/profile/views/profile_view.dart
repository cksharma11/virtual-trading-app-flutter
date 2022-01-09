import 'package:flutter/material.dart';
import 'package:starter/app/theme/app_colors.dart';
import 'package:starter/app/theme/styles.dart';
import 'package:starter/widgets/app_bar/custom_app_bar.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: [
        CustomAppBar.dashboardAppBar('Profile'),
        ListTile(
          title: Text(
            'Chandan Kumar',
            style: Styles.tsPrimaryColorRegular16,
          ),
          subtitle: Text(
            'DE1023\ncksharma122@gmail.com',
            style: Styles.tsPrimaryColorRegular16,
          ),
          isThreeLine: true,
          trailing: Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child: Text(
              'CK',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Funds',
            style: Styles.tsPrimaryColorRegular16,
          ),
          trailing: Icon(Icons.money),
        ),
        ListTile(
          title: Text(
            'Profile',
            style: Styles.tsPrimaryColorRegular16,
          ),
          trailing: Icon(Icons.person),
        ),
        ListTile(
          title: Text(
            'Settings',
            style: Styles.tsPrimaryColorRegular16,
          ),
          trailing: Icon(Icons.settings),
        ),
        ListTile(
          title: Text(
            'Console',
            style: Styles.tsPrimaryColorRegular16,
          ),
          trailing: Icon(Icons.flag),
        ),
        ListTile(
          title: Text(
            'Invite friends',
            style: Styles.tsPrimaryColorRegular16,
          ),
          trailing: Icon(Icons.share),
        ),
        ListTile(
          title: Text(
            'Support',
            style: Styles.tsPrimaryColorRegular16,
          ),
          trailing: Icon(Icons.help_center),
        ),
        ListTile(
          title: Text(
            'User manual',
            style: Styles.tsPrimaryColorRegular16,
          ),
          trailing: Icon(Icons.book),
        ),
        ListTile(
          title: Text(
            'Logout',
            style: Styles.tsPrimaryColorRegular16,
          ),
          trailing: Icon(Icons.logout),
        ),
      ],
    ));
  }
}
