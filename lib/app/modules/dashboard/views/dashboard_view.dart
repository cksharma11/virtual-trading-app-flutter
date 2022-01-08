import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:starter/app/data/values/strings.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Headers.watchlist),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Color.fromARGB(1, 231, 234, 233),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: BottomNavigationButtons.watchlist,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: BottomNavigationButtons.orders,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: BottomNavigationButtons.portfolio,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.light_mode_outlined),
            label: BottomNavigationButtons.learn,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: BottomNavigationButtons.profile,
          ),
        ],
      ),
      body: Center(
        child: Text(
          'DashboardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
