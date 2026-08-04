import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Home/quran/SurahDetails.dart';
import 'package:islami_app/defaultScreen.dart';

class SurahView extends StatefulWidget {
  static const String routeName = "surah_view";

  @override
  State<SurahView> createState() => _SurahViewState();
}

class _SurahViewState extends State<SurahView> {
  var verse = [];
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as surahDetailsArgs;
     readQuranFiles(args.index);
     return Defaultscreen(
      body: Expanded(
        child: Card(
          color: Colors.white.withOpacity(0.8),
          margin: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
          elevation: 20,
          child: verse.isNotEmpty
              ? Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          args.chapterName,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 70,right: 5,left: 5,bottom: 10),
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  "${verse[index]}(${index + 1})",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textDirection: TextDirection.rtl,
                                ),
                              ),
                            );
                          },
                          itemCount: verse.length,
                        ),
                      ),
                    ),
                  ],
                )
              : Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }

  void readQuranFiles(int surahIndex) async {
    String contentView = await rootBundle.loadString(
      "assets/quranFiles/${surahIndex + 1}.txt",
    );
    List<String> lines = contentView.trim().split("\n");
    setState(() {
      if (verse.isEmpty) {
        verse = lines;
      }
    });
  }
}
