import 'package:flutter/material.dart';
import 'package:islami_app/getImagePath.dart';
import 'package:islami_app/themes/theme_data.dart';

class Defaultscreen extends StatelessWidget {
  Widget body;
  Defaultscreen({required this.body});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(getFullPath(themeStyle.isDark?"dark_background.png":"main_background.png"), fit: BoxFit.cover),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              "Islami",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
          body: body,
        ),
      ],
    );
  }
}
