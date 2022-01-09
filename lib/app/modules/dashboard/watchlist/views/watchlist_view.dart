import 'package:flutter/material.dart';
import 'package:starter/app/modules/dashboard/views/ticker_item.dart';
import 'package:starter/widgets/app_bar/custom_app_bar.dart';
import 'package:starter/widgets/search/search_bar.dart';

class WatchlistView extends StatelessWidget {
  const WatchlistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SearchBar(),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => TickerItem(
                currentPrice: 11021.0,
                openingPrice: 11010.0,
                stockName: 'INDIGO $index',
                symbol: 'INDIGO INDIA',
              ),
              itemCount: 20,
              separatorBuilder: (BuildContext context, int index) => Divider(),
            ),
          ),
        ],
      ),
    );
  }
}
