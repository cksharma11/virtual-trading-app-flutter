import 'package:flutter/material.dart';
import 'package:starter/app/theme/styles.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: [
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
          trailing: Icon(Icons.person, size: 60,),
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
