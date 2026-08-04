import 'package:flutter/material.dart';
import 'package:islami_app/Home/quran/surah_view.dart';

class Surahdetails extends StatelessWidget {
  String title;
  int index;
  Surahdetails(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton(onPressed: () {
          Navigator.pushNamed(context, SurahView.routeName,arguments: surahDetailsArgs(chapterName: title, index: index));
        }, child:Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
        ),style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),),),
      ),
    );
  }
}

class surahDetailsArgs {
  String chapterName;
  int index;
  surahDetailsArgs({required this.chapterName, required this.index});
}
