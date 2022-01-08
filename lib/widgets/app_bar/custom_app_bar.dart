import 'package:flutter/material.dart';
import 'package:starter/app/data/values/strings.dart';
import 'package:starter/app/theme/app_colors.dart';

class CustomAppBar {
  static PreferredSizeWidget dashboardAppBar() => AppBar(
    title: Text(Strings.watchlist),
    centerTitle: true,
    foregroundColor: AppColors.black,
    backgroundColor: AppColors.appBarBackground,
  );
}