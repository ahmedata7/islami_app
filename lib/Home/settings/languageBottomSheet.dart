import 'package:flutter/material.dart';
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
                translateProvider.changeLocale(Locale("en"));
              });
            },
                child: translateProvider.isEnglish()?selecteItem(context,"English"):unSelectedItem(context, "English")),
            Divider(height: 20,),
            InkWell(onTap:(){
              setState(() {
                translateProvider.changeLocale(Locale("ar"));
              });
            },
            child:translateProvider.isEnglish()?unSelectedItem(context,"العربيه"):selecteItem(context, "العربية"))
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
    return Text(text);
  }
}
