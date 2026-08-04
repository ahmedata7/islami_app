import 'package:flutter/material.dart';
import 'package:islami_app/getImagePath.dart';
import 'package:islami_app/themes/theme_data.dart';
import 'HadethDetails.dart';

class HadethTab extends StatelessWidget {
  var hadithNames = [
    "الحديث الأول",
    "الحديث الثاني",
    "الحديث الثالث",
    "الحديث الرابع",
    "الحديث الخامس",
    "الحديث السادس",
    "الحديث السابع",
    "الحديث الثامن",
    "الحديث التاسع",
    "الحديث العاشر",
    "الحديث الحادي عشر",
    "الحديث الثاني عشر",
    "الحديث الثالث عشر",
    "الحديث الرابع عشر",
    "الحديث الخامس عشر",
    "الحديث السادس عشر",
    "الحديث السابع عشر",
    "الحديث الثامن عشر",
    "الحديث التاسع عشر",
    "الحديث العشرون",
    "الحديث الحادي والعشرون",
    "الحديث الثاني والعشرون",
    "الحديث الثالث والعشرون",
    "الحديث الرابع والعشرون",
    "الحديث الخامس والعشرون",
    "الحديث السادس والعشرون",
    "الحديث السابع والعشرون",
    "الحديث الثامن والعشرون",
    "الحديث التاسع والعشرون",
    "الحديث الثلاثون",
    "الحديث الحادي والثلاثون",
    "الحديث الثاني والثلاثون",
    "الحديث الثالث والثلاثون",
    "الحديث الرابع والثلاثون",
    "الحديث الخامس والثلاثون",
    "الحديث السادس والثلاثون",
    "الحديث السابع والثلاثون",
    "الحديث الثامن والثلاثون",
    "الحديث التاسع والثلاثون",
    "الحديث الأربعون",
    "الحديث الحادي والأربعون",
    "الحديث الثاني والأربعون",
    "الحديث الثالث والأربعون",
    "الحديث الرابع والأربعون",
    "الحديث الخامس والأربعون",
    "الحديث السادس والأربعون",
    "الحديث السابع والأربعون",
    "الحديث الثامن والأربعون",
    "الحديث التاسع والأربعون",
    "الحديث الخمسون",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Image.asset(getFullPath("ic_quran_header.png")),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 3,
            color: themeStyle.lightPrimary,
          ),
          Text(
            "Hadeth Name",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          Container(
            width: double.infinity,
            height: 3,
            color: themeStyle.lightPrimary,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Center(child: Hadethdetails(hadithNames[index], index));
              },
              separatorBuilder: (context, index) => Container(
                width: double.infinity,
                height: 7,
              ),
              itemCount: hadithNames.length,
            ),
          ),
        ],
      ),
    );
  }
}
