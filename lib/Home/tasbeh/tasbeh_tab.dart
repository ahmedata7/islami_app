import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:islami_app/getImagePath.dart';
import 'package:islami_app/providers/themeProvider.dart';
import 'package:islami_app/themes/theme_data.dart';
import 'package:provider/provider.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;
  int totalCounter = 0;
  double sebhaRotation = 0.0;
  String zikr = "سبحان الله";
  void onZikrPressed() {
    setState(() {
      sebhaRotation += 1 / 33;
      counter++;
      totalCounter++;
      if (counter == 33) {
        counter = 0;
      }
      if(zikr == "سبحان الله" && totalCounter == 33){
        zikr = "الحمد لله";
      }else if(zikr == "الحمد لله" && totalCounter == 66){
        zikr = "الله اكبر";
      }else if(zikr == "الله اكبر" && totalCounter == 99){
        zikr = "لا اله الا الله";
      }else if(zikr == "لا اله الا الله" && totalCounter == 100){
        resetZikr();
      }
    });
  }
  void resetZikr() {
    totalCounter =0;
    counter = 0;
    zikr = "سبحان الله";
    onZikrPressed.call();
  }

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(getFullPath(themeStyle.isDark == themeProvider.isDark()?"ic_head_sebha.png":"dark_ic_sebha_header.png")),
            Padding(
              padding: EdgeInsets.symmetric(vertical: themeStyle.isDark == themeProvider.isDark() ?40 : 76),
              child: Center(
                child: AnimatedRotation(
                  turns: sebhaRotation,
                  duration: const Duration(milliseconds:300 ),
                  curve: Curves.easeInOut,
                  child: Image.asset(getFullPath(themeStyle.isDark == themeProvider.isDark()?"ic_body_sebha.png":"dark_ic_sebha_body.png")),
                ),
              ),
            ),
          ],
        ),
        Text(
          appTranslation(context).sebhaTitle,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          height: 81,
          width: 69,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Text("$counter", style: Theme.of(context).textTheme.displayMedium),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: InkWell(
                onTap: (){
                  onZikrPressed();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 88.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 140,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: themeStyle.isDark == themeProvider.isDark() ? Theme.of(context).colorScheme.primary:Theme.of(context).colorScheme.secondary ,
                    ),
                    child: Text(
                     zikr,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}


