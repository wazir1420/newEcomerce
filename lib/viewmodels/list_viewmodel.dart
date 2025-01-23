import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ListViewsModel extends BaseViewModel {
  bool isVisible = false;
  Color containerColor = Color(0xFFD4E4E6);

  void toggleVisibility() {
    isVisible = !isVisible;
    containerColor = isVisible ? Colors.grey.shade400 : Color(0xFFD4E4E6);
    rebuildUi();
  }

  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    rebuildUi();
  }

  int currentPage = 1;
  final int itemsPerPage = 4;
  List<Map<String, String>> allItems = [
    {
      "image": 'assets/images/Rectangle 5.png',
      "product": 'Jabra Wireless Earbuds',
      "view": '1k',
      "price": '8,999',
      "date": '03 May, 2021',
      "message": '2'
    },
    {
      "image": 'assets/images/Rectangle 4.png',
      "product": 'Jabra Wireless Earbuds',
      "view": '1k',
      "price": '8,999',
      "date": '03 May, 2021',
      "message": '3'
    },
    {
      "image": 'assets/images/Rectangle 1.png',
      "product": 'Mackbook Air',
      "view": '1.8k',
      "price": '45,499',
      "date": '20 April, 2021',
      "message": '2'
    },
    {
      "image": 'assets/images/Rectangle 3.png',
      "product": 'Amazon Alexa',
      "view": '2.2k',
      "price": '999',
      "date": '14 April, 2021',
      "message": '1'
    },
    {
      "image": 'assets/images/Rectangle 2.png',
      "product": 'LG Monitor',
      "view": '2.6k',
      "price": '9,100',
      "date": '13 April, 2021',
      "message": '4'
    },
    {
      "image": 'assets/images/Rectangle 8.png',
      "product": 'Apple AirPods Pro',
      "view": '3.2k',
      "price": '6,500',
      "date": '10 May, 2021',
      "message": '3'
    },
    {
      "image": 'assets/images/Rectangle 11.png',
      "product": 'JBL Charge 2 Speaker',
      "view": '2.5k',
      "price": '30,000',
      "date": '25 June, 2021',
      "message": '5'
    },
    {
      "image": 'assets/images/Rectangle 13.png',
      "product": 'PlayStation Controller',
      "view": '5k',
      "price": '39,999',
      "date": '15 July, 2021',
      "message": '8'
    },
    {
      "image": 'assets/images/Rectangle 16.png',
      "product": 'Nexus Mountain Bike',
      "view": '4.5k',
      "price": '45,000',
      "date": '01 Aug, 2021',
      "message": '4'
    },
    {
      "image": 'assets/images/Rectangle 19.png',
      "product": 'AWildcraft Ranger Tent',
      "view": '1.5k',
      "price": '29,999',
      "date": '20 Sept, 2021',
      "message": '2'
    },
  ];

  List<Map<String, String>> get currentPageItems {
    int startIndex = (currentPage - 1) * itemsPerPage;
    int endIndex = startIndex + itemsPerPage;
    return allItems.sublist(
        startIndex, endIndex > allItems.length ? allItems.length : endIndex);
  }

  void goToPage(int page) {
    currentPage = page;
    rebuildUi();
  }

  void goToNextPage() {
    if (currentPage * itemsPerPage < allItems.length) {
      currentPage++;
      rebuildUi();
    }
  }

  void goToPreviousPage() {
    if (currentPage > 1) {
      currentPage--;
      rebuildUi();
    }
  }
}
