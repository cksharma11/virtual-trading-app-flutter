import 'package:flutter/material.dart';

class CustomTabView extends StatelessWidget {
  final List<Tab> tabs;
  final int initialIndex;

  CustomTabView({required this.tabs, this.initialIndex = 0});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: this.tabs.length,
      initialIndex: initialIndex,
      child: TabBar(
        physics: AlwaysScrollableScrollPhysics(),
        indicatorColor: Colors.black,
        isScrollable: false,
        controller: null,
        tabs: tabs,
      ),
    );
  }
}
