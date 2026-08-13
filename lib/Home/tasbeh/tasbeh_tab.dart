import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:islami_app/getImagePath.dart';

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(getFullPath("ic_head_sebha.png")),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 38.0),
              child: Center(
                child: AnimatedRotation(
                  turns: sebhaRotation,
                  duration: const Duration(milliseconds:300 ),
                  curve: Curves.easeInOut,
                  child: Image.asset(getFullPath("ic_body_sebha.png")),
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90),
                child: ElevatedButton(
                  onPressed: () {
                    onZikrPressed();
                  },
                  child: Text(
                   zikr,
                    style: Theme.of(context).textTheme.displayMedium,
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


