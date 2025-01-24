import 'package:stacked/stacked.dart';

class PurchaseViewModel extends BaseViewModel {
  int productCost = 24999;
  int shippingFee = 150;

  int get totalPrice => productCost + shippingFee;
  // The selected index of the card
  int selectedCardIndex = -1;

  // Method to update the selected card
  void selectCard(int index) {
    selectedCardIndex = index;
    notifyListeners(); // Notify listeners to rebuild UI
  }
}
