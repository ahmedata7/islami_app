import 'package:flutter/material.dart';
import 'package:islami_app/getImagePath.dart';
import 'package:islami_app/providers/themeProvider.dart';
import 'package:islami_app/themes/theme_data.dart';
import 'package:provider/provider.dart';

class Defaultscreen extends StatelessWidget {
  Widget body;
  Defaultscreen({required this.body});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Stack(
      children: [
        Image.asset(getFullPath(themeStyle.isDark == themeProvider.isDark()?"main_background.png":"dark_background.png"), fit: BoxFit.cover),
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
