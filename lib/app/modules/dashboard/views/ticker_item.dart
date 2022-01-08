import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    final change = currentPrice - openingPrice;
    final changeSymbol = change > 0 ? '+' : '';
    final changePercentage = ((change / openingPrice) * 100).toStringAsFixed(2);

    return ListTile(
      title: Text(symbol),
      subtitle: Text(stockName),
      trailing: Column(children: [
        Text(currentPrice.toString()),
        Text(
          '$changeSymbol$change ($changeSymbol$changePercentage%)',
          style: TextStyle(color: change > 0 ? Colors.green : Colors.red),
        ),
      ]),
    );
  }
}
