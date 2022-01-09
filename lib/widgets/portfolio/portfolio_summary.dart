import 'package:flutter/material.dart';
import 'package:starter/app/data/values/strings.dart';
import 'package:starter/widgets/custom_text/custom_text.dart';

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
                    CustomText.tsPrimaryRegular14Text(Strings.invested),
                    CustomText.tsPrimaryRegular18Text(investedMoney.toString()),
                  ],
                ),
                Column(
                  children: [
                    CustomText.tsPrimaryRegular14Text(Strings.current),
                    CustomText.tsPrimaryRegular18Text(currentValue.toString()),
                  ],
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText.tsPrimaryRegular18Text(Strings.profit_loss),
                Row(
                  children: [
                    CustomText.tsPrimaryRegular18Text('$tickerSymbol${change.abs()}'),
                    CustomText.tsPrimaryRegular14Text('($tickerSymbol$changePercentage%)'),
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
