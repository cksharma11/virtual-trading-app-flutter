import 'package:flutter/material.dart';
import 'package:starter/app/theme/app_colors.dart';
import 'package:starter/app/theme/styles.dart';

class ProfileSummaryBox extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String email;
  final String dmatId;

  ProfileSummaryBox({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.dmatId,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(
          '$firstName $lastName',
          style: Styles.tsPrimaryColorRegular16,
        ),
        subtitle: Text(
          '$dmatId\n$email',
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
            '${firstName[0]}${lastName[0]}',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
      ),
    );
  }
}
