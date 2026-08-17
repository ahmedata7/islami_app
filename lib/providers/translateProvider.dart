import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TranslateProvider extends ChangeNotifier{
  SharedPreferences prefs;
  TranslateProvider(this.prefs){
    getSavedLocale();
  }
  static const langKey = "languageKey";
  void saveLocale()async{
    prefs = await SharedPreferences.getInstance();
    prefs.setString(langKey,currantLocale);
  }
  void getSavedLocale()async {
    currantLocale = prefs.getString(langKey)??"en";
  }
  String currantLocale = "en";
  void changeLocale (String newLocale){
    currantLocale = newLocale;
    notifyListeners();
    saveLocale();
  }
  bool isEnglish(){
    return currantLocale == "en";
}
}