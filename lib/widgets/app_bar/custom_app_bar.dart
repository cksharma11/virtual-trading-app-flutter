import 'package:flutter/material.dart';
import 'package:starter/app/theme/app_colors.dart';

class CustomAppBar {
  static PreferredSizeWidget dashboardAppBar(title) => AppBar(
    title: Text(title),
    centerTitle: true,
    foregroundColor: AppColors.black,
    backgroundColor: AppColors.appBarBackground,
  );
}