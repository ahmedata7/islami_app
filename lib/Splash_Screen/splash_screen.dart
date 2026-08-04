import 'package:flutter/material.dart';
import 'package:islami_app/Home/home_screen.dart';
import 'package:islami_app/getImagePath.dart';
class SplashScreen extends StatelessWidget {
  static const String routeName = "splash_screen";
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Expanded(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(getFullPath("Splash_Screen.png"),fit: BoxFit.fill,),
      ),
    );
  }
}
