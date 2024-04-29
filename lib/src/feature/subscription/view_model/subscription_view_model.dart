import 'package:flutter/widgets.dart';

class SubscriptionViewModel extends ChangeNotifier {
  String weekly = 'WEEKLY';
  String monthly = 'MONTHLY';
  String freeTrail = 'FREE_TRIAL';
  String? selectedRadio = 'WEEKLY';
  void ChangeValueRadio(String? value) {
    if (selectedRadio == value) {
      return;
    }
    selectedRadio = value;

    print(selectedRadio);
    notifyListeners();
  }
}
