import 'package:flutter/material.dart';
import 'package:starter/app/theme/styles.dart';
import 'package:starter/widgets/portfolio/portfolio_summary.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(
            'Portfolio',
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.left,
          ),
          DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: TabBar(
              isScrollable: false,
              controller: null,
              tabs: [
                Tab(
                  child: Text(
                    'Holdings',
                    style: Styles.tsPrimaryColorRegular14,
                  ),
                ),
                Tab(
                  child: Text(
                    'Positions',
                    style: Styles.tsPrimaryColorRegular14,
                  ),
                ),
              ],
            ),
          ),
          PortfolioSummary(investedMoney: 523123, currentValue: 641124)
        ],
      ),
    );
  }
}
