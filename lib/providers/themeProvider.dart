import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode currantTheme = ThemeMode.light;
  void changeTheme(ThemeMode newTheme){
    currantTheme = newTheme;
    notifyListeners();
  }
  bool isDark(){
    return currantTheme == ThemeMode.light;
  }
}