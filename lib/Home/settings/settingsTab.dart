import 'package:flutter/material.dart';
import 'package:islami_app/Home/settings/languageBottomSheet.dart';
import 'package:islami_app/Home/settings/themeBottomSheet.dart';
import 'package:islami_app/providers/themeProvider.dart';
import 'package:islami_app/providers/translateProvider.dart';
import 'package:provider/provider.dart';

class Settingstab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    TranslateProvider translateProvider = Provider.of<TranslateProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Theme Mode",style: Theme.of(context).textTheme.displaySmall,),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: InkWell(
            onTap: (){
              themeBottomSheet(context);
            },
            child: Container(
              width:double.infinity,
                padding:EdgeInsets.symmetric(vertical: 4,horizontal: 17),
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).colorScheme.primary,
              border: Border.all(color: Theme.of(context).colorScheme.secondary,width: 4)
            ),
                child: Text(themeProvider.isDark()?"Light":"Dark",style: Theme.of(context).textTheme.bodySmall,)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Language",style: Theme.of(context).textTheme.displaySmall,),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: InkWell(
            onTap: (){
              languageBottomSheet(context);
            },
            child: Container(
                width:double.infinity,
                padding:EdgeInsets.symmetric(vertical: 4,horizontal: 17),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).colorScheme.primary,
                    border: Border.all(color: Theme.of(context).colorScheme.secondary,width: 4)
                ),
                child: Text(translateProvider.isEnglish()?"English":"العربية",style: Theme.of(context).textTheme.bodySmall,)),
          ),
        ),
      ],
    );
  }
  void themeBottomSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context) {
      return Themebottomsheet();
    },);
  }
  void languageBottomSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context) {
      return Languagebottomsheet();
    },);
  }
}
