import 'package:flutter/material.dart';
import 'package:starter/app/data/values/strings.dart';
import 'package:starter/app/theme/styles.dart';

class PortfolioSummary extends StatelessWidget {
  final double investedMoney;
  final double currentValue;

  PortfolioSummary({
    required this.investedMoney,
    required this.currentValue,
  });

  _getProfitPercentage(change) {
    return ((change / investedMoney) * 100).toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    final change = currentValue - investedMoney;
    final isInProfit = change > 0;
    final tickerSymbol = isInProfit ? '+' : '-';
    final changePercentage = _getProfitPercentage(change);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      Strings.invested,
                      style: Styles.tsPrimaryColorRegular14,
                    ),
                    Text(
                      investedMoney.toString(),
                      style: Styles.tsPrimaryColorRegular18,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      Strings.current,
                      style: Styles.tsPrimaryColorRegular14,
                    ),
                    Text(
                      currentValue.toString(),
                      style: Styles.tsPrimaryColorRegular18,
                    )
                  ],
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.profit_loss,
                  style: Styles.tsPrimaryColorRegular18,
                ),
                Row(
                  children: [
                    Text(
                      '$tickerSymbol${change.abs()}',
                      style: Styles.tsPrimaryColorRegular18,
                    ),
                    Text(
                      '($tickerSymbol$changePercentage%)',
                      style: Styles.tsPrimaryColorRegular14,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
