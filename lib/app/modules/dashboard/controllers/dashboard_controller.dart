import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final _currentPage = RxInt(0);
  final pageController = PageController(initialPage: 0);

  int get currentPage => _currentPage.value;

  onPageSelection(int index) {
    _currentPage.value = index;
    pageController.jumpToPage(index);
  }
}
