import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier{
  SharedPreferences prefs ;
  static const String themeKey = "Theme";
  ThemeProvider(this.prefs){
    getSavedTheme();
  }
  void getSavedTheme()async{
    var currantMode = prefs.getBool(themeKey) ?? false;
    currantTheme = currantMode ? ThemeMode.light : ThemeMode.dark;
  }
  void saveTheme()async{
    prefs = await SharedPreferences.getInstance();
    prefs.setBool(themeKey,isDark());
  }
  ThemeMode currantTheme = ThemeMode.light;
  void changeTheme(ThemeMode newTheme){
    currantTheme = newTheme;
    notifyListeners();
    saveTheme();
  }
  bool isDark(){
    return currantTheme == ThemeMode.light;
  }
}