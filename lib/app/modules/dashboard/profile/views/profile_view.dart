import 'package:flutter/material.dart';
import 'package:starter/app/data/values/strings.dart';
import 'package:starter/widgets/app_bar/custom_app_bar.dart';
import 'package:starter/widgets/profile_summary/profile_summary_box.dart';
import 'package:starter/widgets/setting/setting_button.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: [
        CustomAppBar.dashboardAppBar(Strings.profile),
        ProfileSummaryBox(
            firstName: 'Chandan',
            lastName: 'Kumar',
            email: 'cksharma122@gmail.com',
            dmatId: 'DE1021'),
        SettingButton(label: Strings.funds, icon: Icon(Icons.money_outlined)),
        Divider(),
        SettingButton(
            label: Strings.profile, icon: Icon(Icons.person_outlined)),
        Divider(),
        SettingButton(
            label: Strings.settings, icon: Icon(Icons.settings_outlined)),
        Divider(),
        SettingButton(label: Strings.console, icon: Icon(Icons.flag_outlined)),
        Divider(),
        SettingButton(
            label: Strings.invite_friends, icon: Icon(Icons.share_outlined)),
        Divider(),
        SettingButton(
            label: Strings.support, icon: Icon(Icons.help_center_outlined)),
        Divider(),
        SettingButton(
            label: Strings.user_manual, icon: Icon(Icons.info_outline)),
        Divider(),
        SettingButton(label: Strings.logout, icon: Icon(Icons.logout_outlined)),
      ],
    ));
  }
}
