import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/app/app_binding.dart';
import 'package:starter/app/data/values/constants.dart';
import 'package:starter/app/data/values/env.dart';
import 'package:starter/app/routes/app_pages.dart';
import 'package:starter/app/theme/app_theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Env.title,
      navigatorKey: GlobalKeys.navigationKey,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.light,
      initialRoute: Routes.DASHBOARD,
      getPages: AppPages.pages,
      defaultTransition: Transition.fade,
      initialBinding: AppBinding(),
    );
  }
}
