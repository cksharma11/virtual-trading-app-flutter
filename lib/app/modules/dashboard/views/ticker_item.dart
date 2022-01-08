import 'package:flutter/material.dart';
import 'package:starter/app/theme/styles.dart';

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
      title: Text(symbol),
      subtitle: Text(stockName),
      trailing: Column(children: [
        Text(
          currentPrice.toString(),
          style: isPositiveChange
              ? Styles.tsGreenRegular16
              : Styles.tsRedRegular16,
        ),
        Text(
          '$changeSymbol$change ($changeSymbol$changePercentage%)',
          style: isPositiveChange
              ? Styles.tsGreenRegular14
              : Styles.tsRedRegular14,
        ),
      ]),
    );
  }
}
