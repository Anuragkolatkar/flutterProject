import 'package:flutter/material.dart';

class ProviderPage with ChangeNotifier {
  bool? isEligible;
  String? eligibleMessg = "";
  void checkEligible(int age) {
    if (age >= 18) {
      isEligible = true;
      eligibleMessg = "You are Eligible";
      notifyListeners();
    } else {
      isEligible = false;
      eligibleMessg = "You are not Eligible";
      notifyListeners();
    }
  }
}
