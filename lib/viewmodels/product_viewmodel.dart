import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProductViewModel extends BaseViewModel {
  PageController pageController = PageController();

  int _currentPage = 0;

  final List<String> images = [
    'assets/images/mike1.jpg',
    'assets/images/mike4.jpg',
    'assets/images/mike5.jpg',
  ];

  void onPageChanged(int page) {
    _currentPage = page;
    rebuildUi();
  }

  int get currentPage => _currentPage;
}
