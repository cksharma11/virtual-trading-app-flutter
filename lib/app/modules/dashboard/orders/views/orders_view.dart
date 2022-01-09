import 'package:flutter/material.dart';
import 'package:starter/app/data/values/images.dart';
import 'package:starter/app/theme/styles.dart';
import 'package:starter/widgets/search/search_bar.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(
            'Orders',
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.left,
          ),
          DefaultTabController(
            length: 3,
            initialIndex: 0,
            child: TabBar(
              isScrollable: false,
              controller: null,
              tabs: [
                Tab(
                  child: Text(
                    'Open',
                    style: Styles.tsPrimaryColorRegular14,
                  ),
                ),
                Tab(
                  child: Text(
                    'Executed',
                    style: Styles.tsPrimaryColorRegular14,
                  ),
                ),
                Tab(
                  child: Text(
                    'GTT',
                    style: Styles.tsPrimaryColorRegular14,
                  ),
                ),
              ],
            ),
          ),
          SearchBar(),
          SafeArea(
            child: Column(
              children: [
                Image(image: AssetImage(Images.stockChartImage),),
                Text(
                  'No pending orders',
                  style: Styles.tsPrimaryColorRegular18,
                ),
                Text(
                  'Place your order from your watchlist',
                  style: Styles.tsPrimaryColorRegular14,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
