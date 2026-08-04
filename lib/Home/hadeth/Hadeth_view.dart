import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Home/hadeth/HadethDetails.dart';
import 'package:islami_app/defaultScreen.dart';

class HadethView extends StatefulWidget {
  static const String routeName = "hadeth-view";

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  var hadethverse = [];
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as hadethDetailsArgs;
     readHadethFiles(args.hadethindex);
     return Defaultscreen(
      body: Expanded(
        child: Card(
          color: Colors.white.withOpacity(0.8),
          margin: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
          elevation: 20,
          child: hadethverse.isNotEmpty
              ? Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(args.hadethName,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,),),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 60,right: 5,left: 5,bottom: 10),
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  "${hadethverse[index]}",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textDirection: TextDirection.rtl,
                                ),
                              ),
                            );
                          },
                          itemCount: hadethverse.length,
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

  void readHadethFiles(int hadethIndex) async {
    String hadethContentView = await rootBundle.loadString(
      "assets/hadethFiles/h${hadethIndex+1}.txt",
    );
    List<String> hadethlines = hadethContentView.trim().split("\n");
    hadethlines.removeAt(0);
    setState(() {
      if (hadethverse.isEmpty) {
        hadethverse = hadethlines;
      }
    });
  }
}
