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
        backgroundColor: CupertinoColors.lightBackgroundGray,
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
          child: ListView(
        children: [
          Container(
              height: 40,
              margin: EdgeInsets.all(10),
              child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              hintText: ' Search',
            ),
          )),
          ListTile(
            title: Text('NIFTY 50'),
            subtitle: Text('INDICES'),
            trailing: Column(children: [
              Text('1156.25'),
              Text('+11.50 (+0.10%)', style: TextStyle(color: Colors.green),),
            ]),
          ),
        ],
      )),
    );
  }
}
