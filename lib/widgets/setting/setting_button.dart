import 'package:flutter/material.dart';
import 'package:starter/app/theme/styles.dart';

class SettingButton extends StatelessWidget {
  final String label;
  final Widget icon;

  SettingButton({
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: Styles.tsPrimaryColorRegular16,
      ),
      trailing: icon,
    );
  }
}
