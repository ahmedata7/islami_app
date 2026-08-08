import 'package:flutter/material.dart';
import 'package:islami_app/Home/bottom_nav_items.dart';
import 'package:islami_app/Home/hadeth/hadeth_tab.dart';
import 'package:islami_app/Home/quran/quran_tab.dart';
import 'package:islami_app/Home/radio/radio_tab.dart';
import 'package:islami_app/Home/tasbeh/tasbeh_tab.dart';
import 'package:islami_app/getImagePath.dart';
import 'package:islami_app/themes/theme_data.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home-screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(getFullPath(themeStyle.isDark?"dark_background.png":"main_background.png"), fit: BoxFit.cover),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              appTranslation(context).appTitle,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              "Islami",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
          body: tabs[selectedIndex] ,
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavItms(appTranslation(context).quranTab, getFullPath("ic_quran.png"),Theme.of(context).colorScheme.primary),
              BottomNavItms(appTranslation(context).hadethTab, getFullPath("ic_hadeth.png"),Theme.of(context).colorScheme.primary),
              BottomNavItms(appTranslation(context).tasbehTab, getFullPath("ic_sebha.png"),Theme.of(context).colorScheme.primary),
              BottomNavItms(appTranslation(context).radioTab, getFullPath("ic_radio.png"),Theme.of(context).colorScheme.primary),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            currentIndex: selectedIndex,
          ),
        ),
      ],
    );
  }
  var tabs = [QuranTab(),HadethTab(),TasbehTab(),RadioTab()];
}
