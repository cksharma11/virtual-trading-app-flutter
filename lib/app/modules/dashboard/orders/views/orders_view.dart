import 'package:flutter/material.dart';
import 'package:starter/app/data/values/images.dart';
import 'package:starter/app/theme/styles.dart';
import 'package:starter/widgets/custom_tab_view/custom_tab_view.dart';
import 'package:starter/widgets/custom_text/custom_text.dart';
import 'package:starter/widgets/search/search_bar.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomText.tsPrimaryRegular24Text('Orders'),
          CustomTabView(
            tabs: [
              Tab(child: CustomText.tsPrimaryRegular14Text('Open')),
              Tab(child: CustomText.tsPrimaryRegular14Text('Executed')),
              Tab(child: CustomText.tsPrimaryRegular14Text('GTT')),
            ],
          ),
          SearchBar(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 100, 20, 8),
              child: Column(
                children: [
                  Image(
                    image: AssetImage(Images.stockChartImage),
                  ),
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
          ),
        ],
      ),
    );
  }
}
