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
      body: Card(
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        elevation: 20,
        child: verse.isNotEmpty
            ? Expanded(
              child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          textDirection: TextDirection.rtl,
                          "   سورة ${args.chapterName} ",
                          style: Theme.of(context).textTheme.bodyLarge
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30,right: 5,left: 5,bottom: 20),
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                textAlign: TextAlign.center,
                                "${verse[index]}(${index + 1})",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textDirection: TextDirection.rtl,
                              ),
                            );
                          },
                          itemCount: verse.length,
                        ),
                      ),
                    ),
                  ],
                ),
            )
            : Center(child: CircularProgressIndicator()),
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
