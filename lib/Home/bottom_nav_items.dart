import 'package:flutter/material.dart';
import 'package:islami_app/themes/theme_data.dart';

class BottomNavItms extends BottomNavigationBarItem{
  BottomNavItms(String title,Color backgroundColor,
      {
    String? imagePath,
    Icon? addIcon,
  })
    : super(icon: addIcon != null ? addIcon : ImageIcon(AssetImage(imagePath!),size: 30,),label: title,backgroundColor:backgroundColor,);
}