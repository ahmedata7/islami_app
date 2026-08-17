import 'package:flutter/material.dart';
import 'package:islami_app/getImagePath.dart';
import 'package:islami_app/providers/translateProvider.dart';
import 'package:provider/provider.dart';

class Languagebottomsheet extends StatefulWidget {
  @override
  State<Languagebottomsheet> createState() => _LanguagebottomsheetState();
}

class _LanguagebottomsheetState extends State<Languagebottomsheet> {
  @override
  Widget build(BuildContext context){
  TranslateProvider translateProvider = Provider.of<TranslateProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(onTap: (){
              setState(() {
                translateProvider.changeLocale("en");
              });
            },
                child: translateProvider.isEnglish()?selecteItem(context,appTranslation(context).englishLanguage):unSelectedItem(context, appTranslation(context).englishLanguage)),
            Divider(height: 20,),
            InkWell(onTap:(){
              setState(() {
                translateProvider.changeLocale("ar");
              });
            },
            child:translateProvider.isEnglish()?unSelectedItem(context,appTranslation(context).arabicLanguage):selecteItem(context,appTranslation(context).arabicLanguage))
          ],
        ),
      ),
    );
  }

  Widget selecteItem(BuildContext context ,String text){
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(text),
    Icon(Icons.check_box)
    ]
    );
  }

  Widget unSelectedItem(BuildContext context ,String text){
    return Expanded(
      child: Row(
        children: [
          Text(text),
        ],
      ),
    );
  }
}
