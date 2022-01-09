import 'package:flutter/material.dart';
import 'package:starter/app/modules/dashboard/views/ticker_item.dart';
import 'package:starter/app/theme/styles.dart';
import 'package:starter/widgets/search/search_bar.dart';

class WatchlistView extends StatelessWidget {
  const WatchlistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(
            'Marketwatch',
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.left,
          ),
          DefaultTabController(
            length: 3,
            child: TabBar(
              isScrollable: false,
              controller: null,
              tabs: [
                Tab(
                  child: Text(
                    'Watchlist 1',
                    style: Styles.tsPrimaryColorRegular14,
                  ),
                ),
                Tab(
                  child: Text(
                    'Watchlist 2',
                    style: Styles.tsPrimaryColorRegular14,
                  ),
                ),
                Tab(
                  child: Text(
                    'Watchlist 3',
                    style: Styles.tsPrimaryColorRegular14,
                  ),
                ),
              ],
            ),
          ),
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
