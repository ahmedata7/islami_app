import 'package:flutter/material.dart';

class TranslateProvider extends ChangeNotifier{
  Locale currantLocale = Locale("en");
  void changeLocale (Locale newLocale){
    currantLocale = newLocale;
    notifyListeners();
  }
  bool isEnglish(){
    return currantLocale == Locale("en");
}
}