import 'package:flutter/material.dart';
import 'package:islami_app/themes/theme_data.dart';

class BottomNavItms extends BottomNavigationBarItem{
  BottomNavItms(String title, String imagePath)
    : super(icon: ImageIcon(AssetImage(imagePath),size: 30,),label: title,backgroundColor:themeStyle.lightPrimary);
}
