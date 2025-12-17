import 'package:flutter/cupertino.dart';

class LanguageProvider extends ChangeNotifier {
  // data
  String selectedLanguage = "en";

  // function
  void changeLanguage(String newLanguage) {
    if (selectedLanguage == newLanguage) {
      return;
    }
    selectedLanguage = newLanguage;
    notifyListeners();
  }
}
