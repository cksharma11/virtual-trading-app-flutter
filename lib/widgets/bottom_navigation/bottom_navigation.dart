import 'package:flutter/material.dart';
import 'package:starter/app/data/values/strings.dart';

class BottomNavigation extends StatelessWidget {
  final ValueChanged<int> onPageSelection;
  final int currentIndex;

  const BottomNavigation({
    required this.onPageSelection,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: onPageSelection,
      selectedFontSize: 16,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_outline),
          label: BottomNavigationButtons.watchlist,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book_outlined),
          label: BottomNavigationButtons.orders,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          label: BottomNavigationButtons.portfolio,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.light_mode_outlined),
          label: BottomNavigationButtons.learn,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: BottomNavigationButtons.account,
        ),
      ],
    );
  }
}
