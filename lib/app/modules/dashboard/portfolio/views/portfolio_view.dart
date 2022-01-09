import 'package:flutter/material.dart';
import 'package:starter/app/data/values/strings.dart';
import 'package:starter/widgets/custom_text/custom_text.dart';
import 'package:starter/widgets/portfolio/portfolio_summary.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomText.tsPrimaryRegular24Text(BottomNavigationButtons.portfolio),
          DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: TabBar(
              isScrollable: false,
              controller: null,
              tabs: [
                Tab(child: CustomText.tsPrimaryRegular14Text('Holdings')),
                Tab(child: CustomText.tsPrimaryRegular14Text('Positions')),
              ],
            ),
          ),
          PortfolioSummary(investedMoney: 523123, currentValue: 641124)
        ],
      ),
    );
  }
}
