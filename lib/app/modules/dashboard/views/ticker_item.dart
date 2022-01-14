import 'package:flutter/material.dart';
import 'package:starter/app/theme/styles.dart';
import 'package:starter/widgets/custom_text/custom_text.dart';

class TickerItem extends StatelessWidget {
  final String symbol;
  final String stockName;
  final double currentPrice;
  final double openingPrice;

  const TickerItem({
    required this.symbol,
    required this.stockName,
    required this.currentPrice,
    required this.openingPrice,
  });

  getChangePercentage(change) {
    return ((change / openingPrice) * 100).toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    final change = currentPrice - openingPrice;
    final isPositiveChange = change > 0;

    final changeSymbol = isPositiveChange ? '+' : '';
    final changePercentage = getChangePercentage(change);

    return ListTile(
      title: CustomText.tsPrimaryRegular14Text(symbol),
      subtitle: CustomText.tsPrimaryRegular14Text(stockName),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(children: [
            isPositiveChange
                ? CustomText.tsGreenRegular14Text(currentPrice.toString())
                : CustomText.tsRedRegular14Text(currentPrice.toString()),
            isPositiveChange
                ? CustomText.tsGreenRegular14Text(
                    '$changeSymbol$change ($changeSymbol$changePercentage%)')
                : CustomText.tsRedRegular14Text(
                    '$changeSymbol$change ($changeSymbol$changePercentage%)')
          ]),
        ],
      ),
    );
  }
}
