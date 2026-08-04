import 'package:flutter/material.dart';
import 'package:islami_app/Home/bottom_nav_items.dart';
import 'package:islami_app/Home/hadeth/hadeth_tab.dart';
import 'package:islami_app/Home/quran/quran_tab.dart';
import 'package:islami_app/Home/radio/radio_tab.dart';
import 'package:islami_app/Home/tasbeh/tasbeh_tab.dart';
import 'package:islami_app/getImagePath.dart';

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
        Image.asset(getFullPath("main_background.png"), fit: BoxFit.cover),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              "Islami",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
          body: tabs[selectedIndex] ,
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavItms("Quran", getFullPath("ic_quran.png")),
              BottomNavItms("Hadeth", getFullPath("ic_hadeth.png")),
              BottomNavItms("Tasbeh", getFullPath("ic_sebha.png")),
              BottomNavItms("Radio", getFullPath("ic_radio.png")),
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
