import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:starter/app/modules/dashboard/orders/views/orders_view.dart';
import 'package:starter/app/modules/dashboard/portfolio/views/portfolio_view.dart';
import 'package:starter/app/modules/dashboard/profile/views/profile_view.dart';
import 'package:starter/app/modules/dashboard/watchlist/views/watchlist_view.dart';
import 'package:starter/widgets/bottom_navigation/bottom_navigation.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigation(
          currentIndex: controller.currentPage,
          onPageSelection: controller.onPageSelection,
        ),
      ),
      body: PageView(
        children: [
          WatchlistView(),
          OrdersView(),
          PortfolioView(),
          OrdersView(),
          ProfileView(),
        ],
        onPageChanged: controller.onPageSelection,
        controller: controller.pageController,
      ),
    );
  }
}
