import 'package:stacked/stacked.dart';

class ExploreViewModel extends BaseViewModel {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    rebuildUi();
  }
}
