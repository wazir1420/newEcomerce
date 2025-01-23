import 'package:stacked/stacked.dart';

class OrderViewModel extends BaseViewModel {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    rebuildUi();
  }

  int currentPage = 1;
  final int itemsPerPage = 5;
  final List<Map<String, String>> allItems = [
    {
      'image': 'assets/images/Rectangle 8.png',
      'product': 'Apple AirPods Pro',
      'date': '21 Jan 2021',
      'price': '8,999'
    },
    {
      'image': 'assets/images/Rectangle 11.png',
      'product': 'JBL Charge 2 Speaker',
      'date': '20 Dec 2020',
      'price': '6,499'
    },
    {
      'image': 'assets/images/Rectangle 13.png',
      'product': 'PlayStation Controller',
      'date': '14 Nov 2020',
      'price': '1,299'
    },
    {
      'image': 'assets/images/Rectangle 16.png',
      'product': 'Nexus Mountain Bike',
      'date': '05 Oct 2020',
      'price': '9,100'
    },
    {
      'image': 'assets/images/Rectangle 19.png',
      'product': 'Wildcraft Ranger Tent',
      'date': '30 Sept 2020',
      'price': '999'
    },
    {
      'image': 'assets/images/Rectangle 20.jpg',
      'product': 'Samsung Galaxy Watch',
      'date': '05 Mar 2021',
      'price': '5,499'
    },
    {
      'image': 'assets/images/Rectangle 21.jpeg',
      'product': 'GoPro Hero 8',
      'date': '20 Aug 2021',
      'price': '25,999'
    },
    {
      'image': 'assets/images/Rectangle 22.jpg',
      'product': 'Fitbit Charge 4',
      'date': '12 May 2020',
      'price': '3,999'
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

  bool _isRated = false;

  bool get isRated => _isRated;

  // Toggle the rating state (whether the user has rated the product or not)
  void toggleRatingVisibility() {
    _isRated = !_isRated;
    notifyListeners(); // Notify the UI to rebuild
  }
}
