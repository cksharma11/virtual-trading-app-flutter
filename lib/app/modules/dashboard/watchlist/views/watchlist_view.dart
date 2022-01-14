import 'package:flutter/material.dart';
import 'package:starter/app/modules/dashboard/views/ticker_item.dart';
import 'package:starter/app/theme/styles.dart';
import 'package:starter/widgets/custom_tab_view/custom_tab_view.dart';
import 'package:starter/widgets/custom_text/custom_text.dart';
import 'package:starter/widgets/search/search_bar.dart';

class WatchlistView extends StatelessWidget {
  const WatchlistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomText.tsPrimaryRegular24Text('Marketwatch'),
          CustomTabView(tabs: [
            Tab(
                child: CustomText.tsPrimaryRegular14Text('Watchlist 1')
            ),
            Tab(
                child: CustomText.tsPrimaryRegular14Text('Watchlist 2')
            ),
            Tab(
                child: CustomText.tsPrimaryRegular14Text('Watchlist 3')
            ),
          ]),
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
